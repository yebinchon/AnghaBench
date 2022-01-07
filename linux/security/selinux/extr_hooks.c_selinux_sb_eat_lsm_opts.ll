; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_eat_lsm_opts.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_eat_lsm_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Opt_error = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @selinux_sb_eat_lsm_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_eat_lsm_opts(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %2, %111
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @opt_len(i8* %19)
  store i32 %20, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @match_opt_prefix(i8* %21, i32 %22, i8** %12)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @Opt_error, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %18
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %14, align 8
  store i8* %31, i8** %13, align 8
  br label %32

32:                                               ; preds = %50, %30
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = icmp ult i8* %33, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %15, align 1
  %42 = load i8, i8* %15, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 34
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8, i8* %15, align 1
  %47 = load i8*, i8** %14, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %14, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %13, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kmemdup_nul(i8* %54, i32 %60, i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %119

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %27
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = call i32 @selinux_add_opt(i32 %70, i8* %71, i8** %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @kfree(i8* %78)
  br label %119

80:                                               ; preds = %69
  br label %103

81:                                               ; preds = %18
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @memmove(i8* %94, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %10, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %80
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %117

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  br label %18

117:                                              ; preds = %110
  %118 = load i8*, i8** %7, align 8
  store i8 0, i8* %118, align 1
  store i32 0, i32* %3, align 4
  br label %130

119:                                              ; preds = %77, %65
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @selinux_free_mnt_opts(i8* %125)
  %127 = load i8**, i8*** %5, align 8
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %117
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @opt_len(i8*) #1

declare dso_local i32 @match_opt_prefix(i8*, i32, i8**) #1

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @selinux_add_opt(i32, i8*, i8**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @selinux_free_mnt_opts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
