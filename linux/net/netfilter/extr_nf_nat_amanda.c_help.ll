; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_amanda.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_amanda.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_12__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@nf_nat_follow_master = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"all ports in use\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, %struct.nf_conntrack_expect*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nf_conntrack_expect* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conntrack_expect*, align 8
  %14 = alloca [6 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nf_conntrack_expect* %5, %struct.nf_conntrack_expect** %13, align 8
  %17 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %18 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %29 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %30 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @nf_nat_follow_master, align 4
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %65, %6
  %41 = load i64, i64* %15, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @htons(i64 %44)
  %46 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %53 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %52, i32 0)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %68

57:                                               ; preds = %43
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i64 0, i64* %15, align 8
  br label %68

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %40

68:                                               ; preds = %62, %56, %40
  %69 = load i64, i64* %15, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %74 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nf_ct_helper_log(%struct.sk_buff* %72, i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @NF_DROP, align 4
  store i32 %77, i32* %7, align 4
  br label %106

78:                                               ; preds = %68
  %79 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %84 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %91 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %82, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i8* %90, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %78
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %98 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nf_ct_helper_log(%struct.sk_buff* %96, i32 %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %102 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %101)
  %103 = load i32, i32* @NF_DROP, align 4
  store i32 %103, i32* %7, align 4
  br label %106

104:                                              ; preds = %78
  %105 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %95, %71
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
