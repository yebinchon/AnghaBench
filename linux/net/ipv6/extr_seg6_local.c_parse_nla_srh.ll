; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.seg6_local_lwt = type { i32, i32 }
%struct.ipv6_sr_hdr = type { i32 }

@SEG6_LOCAL_SRH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.seg6_local_lwt*)* @parse_nla_srh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nla_srh(%struct.nlattr** %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.ipv6_sr_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i64, i64* @SEG6_LOCAL_SRH, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = call %struct.ipv6_sr_hdr* @nla_data(%struct.nlattr* %11)
  store %struct.ipv6_sr_hdr* %12, %struct.ipv6_sr_hdr** %6, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = load i64, i64* @SEG6_LOCAL_SRH, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call i32 @nla_len(%struct.nlattr* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @seg6_validate_srh(%struct.ipv6_sr_hdr* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kmemdup(%struct.ipv6_sr_hdr* %33, i32 %34, i32 %35)
  %37 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %38 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %40 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %49 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %43, %29, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ipv6_sr_hdr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @seg6_validate_srh(%struct.ipv6_sr_hdr*, i32) #1

declare dso_local i32 @kmemdup(%struct.ipv6_sr_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
