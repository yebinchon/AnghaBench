; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_validate_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6.c_seg6_validate_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_sr_hdr = type { i64, i32, i32, i32 }
%struct.sr6_tlv = type { i32 }

@IPV6_SRCRT_TYPE_4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seg6_validate_srh(%struct.ipv6_sr_hdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6_sr_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sr6_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.ipv6_sr_hdr* %0, %struct.ipv6_sr_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPV6_SRCRT_TYPE_4, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = shl i32 %20, 3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %82

25:                                               ; preds = %16
  %26 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %82

34:                                               ; preds = %25
  %35 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add i64 24, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %82

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %82

58:                                               ; preds = %53
  %59 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %60 = bitcast %struct.ipv6_sr_hdr* %59 to i8*
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = bitcast i8* %63 to %struct.sr6_tlv*
  store %struct.sr6_tlv* %64, %struct.sr6_tlv** %8, align 8
  %65 = load %struct.sr6_tlv*, %struct.sr6_tlv** %8, align 8
  %66 = getelementptr inbounds %struct.sr6_tlv, %struct.sr6_tlv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 4, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %82

77:                                               ; preds = %58
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %50

81:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %76, %57, %48, %33, %24, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
