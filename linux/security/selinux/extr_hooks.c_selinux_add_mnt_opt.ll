; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_add_mnt_opt.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_add_mnt_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Opt_error = common dso_local global i32 0, align 4
@tokens = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@Opt_seclabel = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @selinux_add_mnt_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_add_mnt_opt(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* @Opt_error, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tokens, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tokens, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %20, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tokens, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %14

40:                                               ; preds = %29, %14
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @Opt_error, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %86

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @Opt_seclabel, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kmemdup_nul(i8* %52, i32 %53, i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %75

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = call i32 @selinux_add_opt(i32 %63, i8* %64, i8** %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @kfree(i8* %71)
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %70, %58
  %76 = load i8**, i8*** %9, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8**, i8*** %9, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @selinux_free_mnt_opts(i8* %81)
  %83 = load i8**, i8*** %9, align 8
  store i8* null, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %73, %44
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @selinux_add_opt(i32, i8*, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @selinux_free_mnt_opts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
