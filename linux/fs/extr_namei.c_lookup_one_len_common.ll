; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_one_len_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_one_len_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dentry*, %struct.qstr*)* }
%struct.qstr = type { i8*, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@DCACHE_OP_HASH = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dentry*, i32, %struct.qstr*)* @lookup_one_len_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_one_len_common(i8* %0, %struct.dentry* %1, i32 %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.qstr*, %struct.qstr** %9, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.qstr*, %struct.qstr** %9, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @full_name_hash(%struct.dentry* %18, i8* %19, i32 %20)
  %22 = load %struct.qstr*, %struct.qstr** %9, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %100

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @EACCES, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %100

53:                                               ; preds = %44, %41
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 47
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %59
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %100

72:                                               ; preds = %66
  br label %55

73:                                               ; preds = %55
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DCACHE_OP_HASH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %84, align 8
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = load %struct.qstr*, %struct.qstr** %9, align 8
  %88 = call i32 %85(%struct.dentry* %86, %struct.qstr* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %100

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %73
  %95 = load %struct.dentry*, %struct.dentry** %7, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAY_EXEC, align 4
  %99 = call i32 @inode_permission(i32 %97, i32 %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %91, %69, %50, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @full_name_hash(%struct.dentry*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_permission(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
