; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_will_fit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_will_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i64, i32, i64, i64, %struct.TYPE_10__*, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_chunk = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@SCTP_CID_AUTH = common dso_local global i64 0, align 8
@SCTP_XMIT_PMTU_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*, i64)* @sctp_packet_will_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_will_fit(%struct.sctp_packet* %0, %struct.sctp_chunk* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_packet*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sctp_packet* %0, %struct.sctp_packet** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %13, i32 0, i32 6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %19 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %21, i32 0, i32 6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %17, %3
  %28 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %28, i32 0, i32 6
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SCTP_CID_AUTH, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %17
  %46 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %46, i32* %4, align 4
  br label %188

47:                                               ; preds = %37, %32, %27
  %48 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %49 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %52 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %59 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %71

65:                                               ; preds = %47
  %66 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %67 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %66, i32 0, i32 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %10, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %185

77:                                               ; preds = %71
  %78 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %79 = call i64 @sctp_packet_empty(%struct.sctp_packet* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %83 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %88 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %77
  %92 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %93 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  br label %186

94:                                               ; preds = %86, %81
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %97 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  store i64 %99, i64* %11, align 8
  %100 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %101 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %100, i32 0, i32 6
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %94
  %105 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %106 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %105, i32 0, i32 6
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @SCTP_PAD4(i32 %111)
  %113 = load i64, i64* %11, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %11, align 8
  br label %115

115:                                              ; preds = %104, %94
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %123 = call i32 @sctp_chunk_is_data(%struct.sctp_chunk* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %127 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %125, %121
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %133, %134
  %136 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %137 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %132
  %143 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %144 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %143, i32 0, i32 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %142
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %7, align 8
  %152 = add i64 %150, %151
  %153 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %154 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %153, i32 0, i32 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = icmp ugt i64 %152, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %161, %149, %142
  %164 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %165 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %164, i32 0, i32 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %163
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %7, align 8
  %173 = add i64 %171, %172
  %174 = load %struct.sctp_packet*, %struct.sctp_packet** %5, align 8
  %175 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %174, i32 0, i32 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = icmp ugt i64 %173, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* @SCTP_XMIT_PMTU_FULL, align 4
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %182, %170, %163
  br label %185

185:                                              ; preds = %184, %71
  br label %186

186:                                              ; preds = %185, %91
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %45
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @sctp_packet_empty(%struct.sctp_packet*) #1

declare dso_local i64 @SCTP_PAD4(i32) #1

declare dso_local i32 @sctp_chunk_is_data(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
