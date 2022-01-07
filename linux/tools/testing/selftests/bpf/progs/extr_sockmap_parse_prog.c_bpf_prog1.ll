; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockmap_parse_prog.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockmap_parse_prog.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32, i64, i64, i64, i64 }

@SK_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %5, align 8
  %19 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %20 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = sub nsw i64 %28, %30
  store i64 %31, i64* %9, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr i8, i8* %32, i64 10
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %1
  %37 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %38 = call i32 @bpf_skb_pull_data(%struct.__sk_buff* %37, i32 10)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @SK_DROP, align 4
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %4, align 8
  %48 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %49 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr i8, i8* %52, i64 10
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @SK_DROP, align 4
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i8*, i8** %5, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 1, i32* %63, align 4
  %64 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %65 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %56, %41
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @bpf_skb_pull_data(%struct.__sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
