; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnetid_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnetid_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMC_MAX_PNETID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @smc_pnetid_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnetid_valid(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @skip_spaces(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp uge i8* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %20

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i32, i32* @SMC_MAX_PNETID_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sge i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %77

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ule i8* %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @isalnum(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %77

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @islower(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call signext i8 @toupper(i8 signext %61)
  %63 = sext i8 %62 to i32
  br label %68

64:                                               ; preds = %54
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i32 [ %63, %59 ], [ %67, %64 ]
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  br label %44

75:                                               ; preds = %44
  %76 = load i8*, i8** %5, align 8
  store i8 0, i8* %76, align 1
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %53, %42, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
