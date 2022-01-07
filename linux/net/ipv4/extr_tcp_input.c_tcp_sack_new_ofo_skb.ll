; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_new_ofo_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_new_ofo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, %struct.TYPE_2__, %struct.tcp_sack_block* }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_sack_block = type { i8*, i8* }

@TCP_NUM_SACKS = common dso_local global i32 0, align 4
@TCP_FASTRETRANS_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i8*, i8*)* @tcp_sack_new_ofo_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack_new_ofo_skb(%struct.sock* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.tcp_sack_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %7, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 2
  %15 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %14, align 8
  %16 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %15, i64 0
  store %struct.tcp_sack_block* %16, %struct.tcp_sack_block** %8, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %111

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %25
  %30 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @tcp_sack_extend(%struct.tcp_sack_block* %30, i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %41 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %42 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %41, i64 -1
  %43 = bitcast %struct.tcp_sack_block* %40 to { i8*, i8* }*
  %44 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %43, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast %struct.tcp_sack_block* %42 to { i8*, i8* }*
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %48, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @swap(i8* %45, i8* %47, i8* %50, i8* %52)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  %57 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %58 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %57, i32 -1
  store %struct.tcp_sack_block* %58, %struct.tcp_sack_block** %8, align 8
  br label %36

59:                                               ; preds = %36
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %64 = call i32 @tcp_sack_maybe_coalesce(%struct.tcp_sock* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %123

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %71 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %70, i32 1
  store %struct.tcp_sack_block* %71, %struct.tcp_sack_block** %8, align 8
  br label %25

72:                                               ; preds = %25
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @TCP_NUM_SACKS, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TCP_FASTRETRANS_THRESH, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.sock*, %struct.sock** %4, align 8
  %84 = call i32 @tcp_send_ack(%struct.sock* %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %94 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %93, i32 -1
  store %struct.tcp_sack_block* %94, %struct.tcp_sack_block** %8, align 8
  br label %95

95:                                               ; preds = %85, %72
  br label %96

96:                                               ; preds = %105, %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %101 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %102 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %101, i64 -1
  %103 = bitcast %struct.tcp_sack_block* %100 to i8*
  %104 = bitcast %struct.tcp_sack_block* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  %108 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %109 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %108, i32 -1
  store %struct.tcp_sack_block* %109, %struct.tcp_sack_block** %8, align 8
  br label %96

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %23
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %114 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %117 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %119 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %111, %65
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_sack_extend(%struct.tcp_sack_block*, i8*, i8*) #1

declare dso_local i32 @swap(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @tcp_sack_maybe_coalesce(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
