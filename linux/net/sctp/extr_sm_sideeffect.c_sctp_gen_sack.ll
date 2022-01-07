; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_gen_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_gen_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, i64, i64, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i32, i32, i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_chunk = type { i32 }

@SPP_SACKDELAY_DISABLE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, i32, %struct.sctp_cmd_seq*)* @sctp_gen_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_gen_sack(%struct.sctp_association* %0, i32 %1, %struct.sctp_cmd_seq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_cmd_seq*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sctp_cmd_seq* %2, %struct.sctp_cmd_seq** %7, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.sctp_transport*, %struct.sctp_transport** %16, align 8
  store %struct.sctp_transport* %17, %struct.sctp_transport** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %3
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %22 = icmp ne %struct.sctp_transport* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SPP_SACKDELAY_DISABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23, %20
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %32 = icmp ne %struct.sctp_transport* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %35 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SPP_SACKDELAY_DISABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33, %23, %3
  %41 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %33, %30
  %45 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = call i64 @sctp_tsnmap_get_ctsn(i32* %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = call i64 @sctp_tsnmap_get_max_tsn_seen(i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %44
  %61 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %126, label %66

66:                                               ; preds = %60
  %67 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %73 = icmp ne %struct.sctp_transport* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %66
  %75 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %76 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %80 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sge i32 %78, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %74
  %89 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %90 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %93 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %91, i32* %96, align 4
  br label %120

97:                                               ; preds = %66
  %98 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %99 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %103 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp sge i32 %101, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %97
  %112 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %113 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %114, i32* %119, align 4
  br label %120

120:                                              ; preds = %111, %88
  %121 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %7, align 8
  %122 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %123 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %124 = call i32 @SCTP_TO(i64 %123)
  %125 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %121, i32 %122, i32 %124)
  br label %160

126:                                              ; preds = %60
  %127 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %128 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %13, align 8
  %130 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %131 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %134 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %136 = call %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association* %135)
  store %struct.sctp_chunk* %136, %struct.sctp_chunk** %11, align 8
  %137 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %138 = icmp ne %struct.sctp_chunk* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %126
  %140 = load i64, i64* %13, align 8
  %141 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %142 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %162

143:                                              ; preds = %126
  %144 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %145 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %148 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %7, align 8
  %151 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %152 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %153 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %152)
  %154 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %150, i32 %151, i32 %153)
  %155 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %7, align 8
  %156 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %157 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %158 = call i32 @SCTP_TO(i64 %157)
  %159 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %155, i32 %156, i32 %158)
  br label %160

160:                                              ; preds = %143, %120
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %4, align 4
  br label %166

162:                                              ; preds = %139
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %160
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i64 @sctp_tsnmap_get_max_tsn_seen(i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
