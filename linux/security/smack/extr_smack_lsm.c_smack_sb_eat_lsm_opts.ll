; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sb_eat_lsm_opts.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sb_eat_lsm_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Opt_error = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @smack_sb_eat_lsm_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_sb_eat_lsm_opts(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %16

16:                                               ; preds = %2, %102
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 44)
  store i8* %18, i8** %9, align 8
  store i8* null, i8** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %16
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @match_opt_prefix(i8* %32, i32 %33, i8** %13)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @Opt_error, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %13, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmemdup_nul(i8* %39, i32 %48, i32 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @smack_add_opt(i32 %51, i8* %52, i8** %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %38
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @kfree(i8* %59)
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @smack_free_mnt_opts(i8* %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i8**, i8*** %5, align 8
  store i8* null, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %3, align 4
  br label %110

71:                                               ; preds = %38
  br label %94

72:                                               ; preds = %31
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @memmove(i8* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %11, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %89, %71
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %108

102:                                              ; preds = %94
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i8*, i8** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  br label %16

108:                                              ; preds = %101
  %109 = load i8*, i8** %7, align 8
  store i8 0, i8* %109, align 1
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %68
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @match_opt_prefix(i8*, i32, i8**) #1

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @smack_add_opt(i32, i8*, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @smack_free_mnt_opts(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
