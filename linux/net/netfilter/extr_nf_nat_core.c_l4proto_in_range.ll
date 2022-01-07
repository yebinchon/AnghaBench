; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_l4proto_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_l4proto_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.nf_conntrack_man_proto = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, i32, %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto*)* @l4proto_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4proto_in_range(%struct.nf_conntrack_tuple* %0, i32 %1, %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.nf_conntrack_man_proto*, align 8
  %9 = alloca %union.nf_conntrack_man_proto*, align 8
  %10 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto** %8, align 8
  store %union.nf_conntrack_man_proto* %3, %union.nf_conntrack_man_proto** %9, align 8
  %11 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %12 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %81 [
    i32 133, label %15
    i32 132, label %15
    i32 134, label %46
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
    i32 135, label %46
    i32 131, label %46
  ]

15:                                               ; preds = %4, %4
  %16 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  %23 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %8, align 8
  %24 = bitcast %union.nf_conntrack_man_proto* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  %28 = icmp sge i32 %22, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %15
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %9, align 8
  %38 = bitcast %union.nf_conntrack_man_proto* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = icmp sle i32 %36, %41
  br label %43

43:                                               ; preds = %29, %15
  %44 = phi i1 [ false, %15 ], [ %42, %29 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %82

46:                                               ; preds = %4, %4, %4, %4, %4, %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %52 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %58 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ntohs(i32 %63)
  %65 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %8, align 8
  %66 = bitcast %union.nf_conntrack_man_proto* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = icmp sge i32 %64, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ntohs(i32 %71)
  %73 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %9, align 8
  %74 = bitcast %union.nf_conntrack_man_proto* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntohs(i32 %75)
  %77 = icmp sle i32 %72, %76
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i1 [ false, %62 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %82

81:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %78, %43
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
