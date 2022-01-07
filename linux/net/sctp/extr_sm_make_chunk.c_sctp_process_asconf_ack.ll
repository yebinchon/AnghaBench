; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_asconf_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_asconf_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.sctp_chunk*, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.sctp_addip_param = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.sctp_addr_param = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_process_asconf_ack(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_addip_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_addr_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %5, align 8
  store i32 131, i32* %7, align 4
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 4, i32* %11, align 4
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = inttoptr i64 %29 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %30, %union.sctp_addr_param** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %union.sctp_addr_param*, %union.sctp_addr_param** %8, align 8
  %35 = bitcast %union.sctp_addr_param* %34 to %struct.TYPE_5__*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %union.sctp_addr_param*, %union.sctp_addr_param** %8, align 8
  %40 = bitcast %union.sctp_addr_param* %39 to i8*
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.sctp_addip_param*
  store %struct.sctp_addip_param* %44, %struct.sctp_addip_param** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %2
  br label %57

57:                                               ; preds = %95, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %110

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 131, i32* %7, align 4
  br label %76

64:                                               ; preds = %60
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %66 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @sctp_get_asconf_response(%struct.sctp_chunk* %65, %struct.sctp_addip_param* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 131, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %71, %64
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %94 [
    i32 131, label %78
    i32 129, label %82
    i32 128, label %83
    i32 130, label %93
    i32 133, label %93
    i32 132, label %93
  ]

78:                                               ; preds = %76
  %79 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %80 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %6, align 8
  %81 = call i32 @sctp_asconf_param_success(%struct.sctp_association* %79, %struct.sctp_addip_param* %80)
  br label %95

82:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  br label %95

83:                                               ; preds = %76
  %84 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %6, align 8
  %85 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  br label %95

93:                                               ; preds = %76, %76, %76
  br label %94

94:                                               ; preds = %76, %93
  br label %95

95:                                               ; preds = %94, %83, %82, %78
  %96 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %6, align 8
  %97 = getelementptr inbounds %struct.sctp_addip_param, %struct.sctp_addip_param* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ntohs(i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.sctp_addip_param*, %struct.sctp_addip_param** %6, align 8
  %102 = bitcast %struct.sctp_addip_param* %101 to i8*
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = bitcast i8* %105 to %struct.sctp_addip_param*
  store %struct.sctp_addip_param* %106, %struct.sctp_addip_param** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %57

110:                                              ; preds = %57
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %115 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %120 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %122 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @sctp_transport_immediate_rtx(i32 %124)
  br label %126

126:                                              ; preds = %118, %113, %110
  %127 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %128 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %127, i32 0, i32 0
  %129 = call i32 @list_del_init(i32* %128)
  %130 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %131 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %130)
  %132 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 0
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %133, align 8
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_get_asconf_response(%struct.sctp_chunk*, %struct.sctp_addip_param*, i32) #1

declare dso_local i32 @sctp_asconf_param_success(%struct.sctp_association*, %struct.sctp_addip_param*) #1

declare dso_local i32 @sctp_transport_immediate_rtx(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
