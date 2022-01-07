; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_conn_create_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_conn_create_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.nci_conn_info* }
%struct.nci_conn_info = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.sk_buff = type { i64* }
%struct.nci_core_conn_create_rsp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@NCI_STATUS_REJECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_core_conn_create_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_core_conn_create_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nci_conn_info*, align 8
  %7 = alloca %struct.nci_core_conn_create_rsp*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store %struct.nci_conn_info* null, %struct.nci_conn_info** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @NCI_STATUS_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %118

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = bitcast i64* %21 to %struct.nci_core_conn_create_rsp*
  store %struct.nci_core_conn_create_rsp* %22, %struct.nci_core_conn_create_rsp** %7, align 8
  %23 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(i32* %26, i32 32, i32 %27)
  %29 = bitcast i8* %28 to %struct.nci_conn_info*
  store %struct.nci_conn_info* %29, %struct.nci_conn_info** %6, align 8
  %30 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %31 = icmp ne %struct.nci_conn_info* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = load i64, i64* @NCI_STATUS_REJECTED, align 8
  store i64 %33, i64* %5, align 8
  br label %131

34:                                               ; preds = %18
  %35 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(i32* %38, i32 4, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  %42 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %43 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %42, i32 0, i32 4
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %45 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %34
  %49 = load i64, i64* @NCI_STATUS_REJECTED, align 8
  store i64 %49, i64* %5, align 8
  br label %119

50:                                               ; preds = %34
  %51 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %55 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %61 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %60, i32 0, i32 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %69 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  %72 = load %struct.nci_core_conn_create_rsp*, %struct.nci_core_conn_create_rsp** %7, align 8
  %73 = getelementptr inbounds %struct.nci_core_conn_create_rsp, %struct.nci_core_conn_create_rsp* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %76 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %78 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %77, i32 0, i32 3
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %81 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %80, i32 0, i32 3
  %82 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %83 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %82, i32 0, i32 3
  %84 = call i32 @list_add(i32* %81, i32* %83)
  %85 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %90 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %88, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %50
  %96 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %97 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %98 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store %struct.nci_conn_info* %96, %struct.nci_conn_info** %100, align 8
  br label %101

101:                                              ; preds = %95, %50
  %102 = load %struct.nci_core_conn_create_rsp*, %struct.nci_core_conn_create_rsp** %7, align 8
  %103 = getelementptr inbounds %struct.nci_core_conn_create_rsp, %struct.nci_core_conn_create_rsp* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %106 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nci_core_conn_create_rsp*, %struct.nci_core_conn_create_rsp** %7, align 8
  %108 = getelementptr inbounds %struct.nci_core_conn_create_rsp, %struct.nci_core_conn_create_rsp* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %111 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %113 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %112, i32 0, i32 0
  %114 = load %struct.nci_core_conn_create_rsp*, %struct.nci_core_conn_create_rsp** %7, align 8
  %115 = getelementptr inbounds %struct.nci_core_conn_create_rsp, %struct.nci_core_conn_create_rsp* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @atomic_set(i32* %113, i32 %116)
  br label %118

118:                                              ; preds = %101, %2
  br label %119

119:                                              ; preds = %118, %48
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @NCI_STATUS_REJECTED, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.nci_conn_info*, %struct.nci_conn_info** %6, align 8
  %129 = call i32 @devm_kfree(i32* %127, %struct.nci_conn_info* %128)
  br label %130

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %130, %32
  %132 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @nci_req_complete(%struct.nci_dev* %132, i64 %133)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.nci_conn_info*) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
