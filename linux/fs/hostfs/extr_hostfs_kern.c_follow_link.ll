; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_follow_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @follow_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = call i8* (...) @__getname()
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = call i32 @hostfs_do_readlink(i8* %16, i8* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %72

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %2, align 8
  br label %77

38:                                               ; preds = %31
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @strrchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %2, align 8
  br label %77

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %49, %51
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %72

62:                                               ; preds = %45
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @__putname(i8* %67)
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %2, align 8
  br label %77

72:                                               ; preds = %59, %27, %22, %12
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @__putname(i8* %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i8* @ERR_PTR(i32 %75)
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %72, %62, %43, %36
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i8* @__getname(...) #1

declare dso_local i32 @hostfs_do_readlink(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
