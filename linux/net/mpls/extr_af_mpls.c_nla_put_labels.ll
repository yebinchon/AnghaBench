; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_nla_put_labels.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_nla_put_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.mpls_shim_hdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_put_labels(%struct.sk_buff* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.mpls_shim_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mpls_shim_hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 4
  %19 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %15, i32 %16, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %10, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %27 = call %struct.mpls_shim_hdr* @nla_data(%struct.nlattr* %26)
  store %struct.mpls_shim_hdr* %27, %struct.mpls_shim_hdr** %11, align 8
  store i32 1, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %48, %25
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %34, i64 %36
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @mpls_entry_encode(i32 %42, i32 0, i32 0, i32 %43)
  %45 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %14, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.mpls_shim_hdr* %37 to i8*
  %47 = bitcast %struct.mpls_shim_hdr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %13, align 4
  br label %30

51:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.mpls_shim_hdr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @mpls_entry_encode(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
