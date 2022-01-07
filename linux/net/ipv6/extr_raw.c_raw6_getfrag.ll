; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_raw6_getfrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_raw6_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.raw6_frag_vec = type { i32, i32, i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* @raw6_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw6_getfrag(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.sk_buff* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.raw6_frag_vec*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sk_buff* %5, %struct.sk_buff** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.raw6_frag_vec*
  store %struct.raw6_frag_vec* %17, %struct.raw6_frag_vec** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %20 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %6
  %24 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %25 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %39 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @memcpy(i8* %37, i64 %43, i32 %44)
  br label %63

46:                                               ; preds = %23
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %51 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @csum_partial_copy_nocheck(i64 %55, i8* %56, i32 %57, i32 0)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @csum_block_add(i32 %49, i32 %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %46, %36
  store i32 0, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %93

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %6
  %79 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %80 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load %struct.raw6_frag_vec*, %struct.raw6_frag_vec** %14, align 8
  %85 = getelementptr inbounds %struct.raw6_frag_vec, %struct.raw6_frag_vec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %92 = call i32 @ip_generic_getfrag(i32 %86, i8* %87, i32 %88, i32 %89, i32 %90, %struct.sk_buff* %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %78, %76
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @csum_block_add(i32, i32, i32) #1

declare dso_local i32 @csum_partial_copy_nocheck(i64, i8*, i32, i32) #1

declare dso_local i32 @ip_generic_getfrag(i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
