; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_find_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_ftp.c_find_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_man = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"find_pattern `%s': dlen = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Pattern matches!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Skipped up to 0x%hhx delimiter!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Match succeeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8, i8, i32*, i32*, %struct.nf_conntrack_man*, i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)*)* @find_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pattern(i8* %0, i64 %1, i8* %2, i64 %3, i8 signext %4, i8 signext %5, i32* %6, i32* %7, %struct.nf_conntrack_man* %8, i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nf_conntrack_man*, align 8
  %21 = alloca i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8 %4, i8* %16, align 1
  store i8 %5, i8* %17, align 1
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store %struct.nf_conntrack_man* %8, %struct.nf_conntrack_man** %20, align 8
  store i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)* %9, i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)** %21, align 8
  %23 = load i64, i64* %15, align 8
  store i64 %23, i64* %22, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25)
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %10
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @strncasecmp(i8* %31, i8* %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %11, align 4
  br label %98

37:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %98

38:                                               ; preds = %10
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i64 @strncasecmp(i8* %39, i8* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %98

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8, i8* %16, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i64, i64* %15, align 8
  store i64 %50, i64* %22, align 8
  br label %51

51:                                               ; preds = %67, %49
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %22, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %16, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i64, i64* %22, align 8
  %62 = load i64, i64* %13, align 8
  %63 = sub i64 %62, 1
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %11, align 4
  br label %98

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %22, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %22, align 8
  br label %51

70:                                               ; preds = %51
  %71 = load i64, i64* %22, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %22, align 8
  br label %73

73:                                               ; preds = %70, %45
  %74 = load i8, i8* %16, align 1
  %75 = sext i8 %74 to i32
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %22, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %18, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)*, i32 (i8*, i64, %struct.nf_conntrack_man*, i8, i32*)** %21, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %22, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %22, align 8
  %86 = sub i64 %84, %85
  %87 = load %struct.nf_conntrack_man*, %struct.nf_conntrack_man** %20, align 8
  %88 = load i8, i8* %17, align 1
  %89 = load i32*, i32** %18, align 8
  %90 = call i32 %80(i8* %83, i64 %86, %struct.nf_conntrack_man* %87, i8 signext %88, i32* %89)
  %91 = load i32*, i32** %19, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %19, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %73
  store i32 -1, i32* %11, align 4
  br label %98

96:                                               ; preds = %73
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %95, %65, %44, %37, %36
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
