; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_flush_task_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_flush_task_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsmount*, i32, i32)* @proc_flush_task_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_flush_task_mnt(%struct.vfsmount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca [11 x i8], align 1
  %11 = alloca %struct.qstr, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @snprintf(i8* %14, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %19 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  %21 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %20, %struct.qstr* %11)
  store %struct.dentry* %21, %struct.dentry** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = icmp ne %struct.dentry* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i32 @d_invalidate(%struct.dentry* %25)
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call i32 @dput(%struct.dentry* %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %82

34:                                               ; preds = %29
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @snprintf(i8* %37, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  %44 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %43, %struct.qstr* %11)
  store %struct.dentry* %44, %struct.dentry** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = icmp ne %struct.dentry* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %81

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strlen(i8* %51)
  %53 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %54, %struct.qstr* %11)
  store %struct.dentry* %55, %struct.dentry** %9, align 8
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %78

59:                                               ; preds = %48
  %60 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %63 = load i32, i32* %5, align 4
  %64 = call i8* @snprintf(i8* %62, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* %66, %struct.qstr* %11)
  store %struct.dentry* %67, %struct.dentry** %7, align 8
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = icmp ne %struct.dentry* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i32 @d_invalidate(%struct.dentry* %71)
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  br label %75

75:                                               ; preds = %70, %59
  %76 = load %struct.dentry*, %struct.dentry** %9, align 8
  %77 = call i32 @dput(%struct.dentry* %76)
  br label %78

78:                                               ; preds = %75, %58
  %79 = load %struct.dentry*, %struct.dentry** %8, align 8
  %80 = call i32 @dput(%struct.dentry* %79)
  br label %81

81:                                               ; preds = %78, %47
  br label %82

82:                                               ; preds = %81, %33
  ret void
}

declare dso_local i8* @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i8* @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
