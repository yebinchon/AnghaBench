; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_demote_rq_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_demote_rq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock_operations = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_glock = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%u:%llu %15s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"EX\00", align 1
@LM_ST_UNLOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"CW\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@LM_ST_DEFERRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"PR\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@LM_ST_SHARED = common dso_local global i32 0, align 4
@LM_TYPE_JOURNAL = common dso_local global i32 0, align 4
@LM_TYPE_NONDISK = common dso_local global i32 0, align 4
@GFS2_FREEZE_LOCK = common dso_local global i64 0, align 8
@gfs2_freeze_glops = common dso_local global %struct.gfs2_glock_operations zeroinitializer, align 4
@gfs2_glops_list = common dso_local global %struct.gfs2_glock_operations** null, align 8
@SDF_DEMOTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"demote interface used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i8*, i64)* @demote_rq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demote_rq_store(%struct.gfs2_sbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_glock*, align 8
  %9 = alloca %struct.gfs2_glock_operations*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %16 = call i32 @capable(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11, i64* %12, i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %115

30:                                               ; preds = %21
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @LM_ST_UNLOCKED, align 4
  store i32 %35, i32* %10, align 4
  br label %61

36:                                               ; preds = %30
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @LM_ST_DEFERRED, align 4
  store i32 %45, i32* %10, align 4
  br label %60

46:                                               ; preds = %40
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @LM_ST_SHARED, align 4
  store i32 %55, i32* %10, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %115

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @LM_TYPE_JOURNAL, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %115

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @LM_TYPE_NONDISK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @GFS2_FREEZE_LOCK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store %struct.gfs2_glock_operations* @gfs2_freeze_glops, %struct.gfs2_glock_operations** %9, align 8
  br label %83

77:                                               ; preds = %72, %68
  %78 = load %struct.gfs2_glock_operations**, %struct.gfs2_glock_operations*** @gfs2_glops_list, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.gfs2_glock_operations*, %struct.gfs2_glock_operations** %78, i64 %80
  %82 = load %struct.gfs2_glock_operations*, %struct.gfs2_glock_operations** %81, align 8
  store %struct.gfs2_glock_operations* %82, %struct.gfs2_glock_operations** %9, align 8
  br label %83

83:                                               ; preds = %77, %76
  %84 = load %struct.gfs2_glock_operations*, %struct.gfs2_glock_operations** %9, align 8
  %85 = icmp eq %struct.gfs2_glock_operations* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %115

89:                                               ; preds = %83
  %90 = load i32, i32* @SDF_DEMOTE, align 4
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %92 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %91, i32 0, i32 0
  %93 = call i32 @test_and_set_bit(i32 %90, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %97 = call i32 @fs_info(%struct.gfs2_sbd* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.gfs2_glock_operations*, %struct.gfs2_glock_operations** %9, align 8
  %102 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %99, i64 %100, %struct.gfs2_glock_operations* %101, i32 0, %struct.gfs2_glock** %8)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %115

107:                                              ; preds = %98
  %108 = load %struct.gfs2_glock*, %struct.gfs2_glock** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @gfs2_glock_cb(%struct.gfs2_glock* %108, i32 %109)
  %111 = load %struct.gfs2_glock*, %struct.gfs2_glock** %8, align 8
  %112 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %111)
  %113 = load i64, i64* %7, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %107, %105, %86, %65, %56, %27, %18
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i64*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i64, %struct.gfs2_glock_operations*, i32, %struct.gfs2_glock**) #1

declare dso_local i32 @gfs2_glock_cb(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
