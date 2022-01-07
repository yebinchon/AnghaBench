; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_parse_varlen.c_handle_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_parse_varlen.c_handle_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i64, i64 }
%struct.ethhdr = type { i32 }
%struct.vlan_hdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_ingress(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlan_hdr*, align 8
  %10 = alloca %struct.vlan_hdr*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ethhdr*
  store %struct.ethhdr* %16, %struct.ethhdr** %5, align 8
  %17 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.__sk_buff, %struct.__sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  store i32 4, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

28:                                               ; preds = %1
  %29 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %30 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ETH_P_8021Q, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ETH_P_8021AD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35, %28
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %44, %struct.vlan_hdr** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %111

56:                                               ; preds = %39
  %57 = load %struct.vlan_hdr*, %struct.vlan_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %35
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ETH_P_8021Q, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @ETH_P_8021AD, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %73, %struct.vlan_hdr** %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ugt i8* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %111

85:                                               ; preds = %68
  %86 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %87 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %64
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @ETH_P_IP, align 4
  %92 = call i32 @htons(i32 %91)
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @parse_ipv4(i8* %95, i32 %96, i8* %97)
  store i32 %98, i32* %2, align 4
  br label %111

99:                                               ; preds = %89
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ETH_P_IPV6, align 4
  %102 = call i32 @htons(i32 %101)
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @parse_ipv6(i8* %105, i32 %106, i8* %107)
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %104, %94, %84, %55, %27
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @parse_ipv4(i8*, i32, i8*) #1

declare dso_local i32 @parse_ipv6(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
