; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_rdwr_violation_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_main.c_ima_rdwr_violation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.integrity_iint_cache = type { i32 }
%struct.inode = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@IMA_MUST_MEASURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid_pcr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ToMToU\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"open_writers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, %struct.integrity_iint_cache*, i32, i8**, i8**, i8*)* @ima_rdwr_violation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_rdwr_violation_check(%struct.file* %0, %struct.integrity_iint_cache* %1, i32 %2, i8** %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.integrity_iint_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.integrity_iint_cache* %1, %struct.integrity_iint_cache** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %13, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @FMODE_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %6
  %27 = load %struct.inode*, %struct.inode** %13, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = call i64 @IS_IMA(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %37 = icmp ne %struct.integrity_iint_cache* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = call %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode* %39)
  store %struct.integrity_iint_cache* %40, %struct.integrity_iint_cache** %8, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %43 = icmp ne %struct.integrity_iint_cache* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @IMA_MUST_MEASURE, align 4
  %46 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %47 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %15, align 4
  br label %51

51:                                               ; preds = %50, %44, %41
  br label %52

52:                                               ; preds = %51, %31, %26
  br label %70

53:                                               ; preds = %6
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @IMA_MUST_MEASURE, align 4
  %58 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %59 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.inode*, %struct.inode** %13, align 8
  %63 = call i64 @inode_is_open_for_write(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  br label %69

69:                                               ; preds = %68, %65, %61
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %101

77:                                               ; preds = %73, %70
  %78 = load %struct.file*, %struct.file** %7, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  %80 = load i8**, i8*** %10, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* @ima_d_path(i32* %79, i8** %80, i8* %81)
  %83 = load i8**, i8*** %11, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.file*, %struct.file** %7, align 8
  %88 = load i8**, i8*** %11, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %91 = call i32 @ima_add_violation(%struct.file* %87, i8* %89, %struct.integrity_iint_cache* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %86, %77
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.file*, %struct.file** %7, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %100 = call i32 @ima_add_violation(%struct.file* %96, i8* %98, %struct.integrity_iint_cache* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %76, %95, %92
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @IS_IMA(%struct.inode*) #1

declare dso_local %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @inode_is_open_for_write(%struct.inode*) #1

declare dso_local i8* @ima_d_path(i32*, i8**, i8*) #1

declare dso_local i32 @ima_add_violation(%struct.file*, i8*, %struct.integrity_iint_cache*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
