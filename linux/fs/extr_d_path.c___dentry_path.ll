; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c___dentry_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c___dentry_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@rename_lock = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*, i32)* @__dentry_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__dentry_path(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %71

18:                                               ; preds = %3
  %19 = call i32 (...) @rcu_read_lock()
  br label %20

20:                                               ; preds = %62, %18
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %21, %struct.dentry** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %11, align 4
  %27 = call i32 @prepend(i8** %9, i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  store i8 47, i8* %30, align 1
  %31 = call i32 @read_seqbegin_or_lock(i32* @rename_lock, i32* %12)
  br label %32

32:                                               ; preds = %49, %20
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = call i32 @IS_ROOT(%struct.dentry* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  store %struct.dentry* %40, %struct.dentry** %14, align 8
  %41 = load %struct.dentry*, %struct.dentry** %14, align 8
  %42 = call i32 @prefetch(%struct.dentry* %41)
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call i32 @prepend_name(i8** %9, i32* %11, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %52

49:                                               ; preds = %37
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %10, align 8
  %51 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %51, %struct.dentry** %8, align 8
  br label %32

52:                                               ; preds = %48, %32
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (...) @rcu_read_unlock()
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @need_seqretry(i32* @rename_lock, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %20

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @done_seqretry(i32* @rename_lock, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %71

69:                                               ; preds = %63
  %70 = load i8*, i8** %10, align 8
  store i8* %70, i8** %4, align 8
  br label %75

71:                                               ; preds = %68, %17
  %72 = load i32, i32* @ENAMETOOLONG, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i8* @ERR_PTR(i32 %73)
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %71, %69
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @prepend(i8**, i32*, i8*, i32) #1

declare dso_local i32 @read_seqbegin_or_lock(i32*, i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @prefetch(%struct.dentry*) #1

declare dso_local i32 @prepend_name(i8**, i32*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @need_seqretry(i32*, i32) #1

declare dso_local i32 @done_seqretry(i32*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
