; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_set_key_val.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_set_key_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_CT_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, i8*, i32, i8*, i32, i32)* @tcf_ct_set_key_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_ct_set_key_val(%struct.nlattr** %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %56

20:                                               ; preds = %6
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @nla_memcpy(i8* %21, %struct.nlattr* %26, i32 %27)
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %56

32:                                               ; preds = %20
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @TCA_CT_UNSPEC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %36, %32
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @memset(i8* %44, i32 255, i32 %45)
  br label %56

47:                                               ; preds = %36
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @nla_memcpy(i8* %48, %struct.nlattr* %53, i32 %54)
  br label %56

56:                                               ; preds = %19, %31, %47, %43
  ret void
}

declare dso_local i32 @nla_memcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
