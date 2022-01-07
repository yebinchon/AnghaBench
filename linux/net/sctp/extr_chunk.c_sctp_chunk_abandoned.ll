; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_chunk.c_sctp_chunk_abandoned.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_chunk.c_sctp_chunk_abandoned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sctp_stream_out = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }

@SCTP_DATA_FIRST_FRAG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TTL = common dso_local global i32 0, align 4
@RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_chunk_abandoned(%struct.sctp_chunk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_stream_out*, align 8
  %5 = alloca %struct.sctp_stream_out*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %3, align 8
  %6 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %6, i32 0, i32 3
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %195

14:                                               ; preds = %1
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %195

22:                                               ; preds = %14
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SCTP_DATA_FIRST_FRAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %195

37:                                               ; preds = %27, %22
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SCTP_PR_TTL_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %114

44:                                               ; preds = %37
  %45 = load i32, i32* @jiffies, align 4
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @time_after(i32 %45, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %114

53:                                               ; preds = %44
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %59 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.sctp_stream_out* @SCTP_SO(i32* %57, i32 %61)
  store %struct.sctp_stream_out* %62, %struct.sctp_stream_out** %4, align 8
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %64 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %53
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @TTL, align 4
  %74 = call i64 @SCTP_PR_INDEX(i32 %73)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @TTL, align 4
  %84 = call i64 @SCTP_PR_INDEX(i32 %83)
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %109

88:                                               ; preds = %53
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %90 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %89, i32 0, i32 3
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @TTL, align 4
  %95 = call i64 @SCTP_PR_INDEX(i32 %94)
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %4, align 8
  %100 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @TTL, align 4
  %105 = call i64 @SCTP_PR_INDEX(i32 %104)
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %88, %67
  %110 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %111 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  store i32 1, i32* %2, align 4
  br label %195

114:                                              ; preds = %44, %37
  %115 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %116 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @SCTP_PR_RTX_ENABLED(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %164

121:                                              ; preds = %114
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %123 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %126 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %121
  %131 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %132 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %136 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.sctp_stream_out* @SCTP_SO(i32* %134, i32 %138)
  store %struct.sctp_stream_out* %139, %struct.sctp_stream_out** %5, align 8
  %140 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %141 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @RTX, align 4
  %146 = call i64 @SCTP_PR_INDEX(i32 %145)
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %5, align 8
  %151 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @RTX, align 4
  %156 = call i64 @SCTP_PR_INDEX(i32 %155)
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %161 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %160, i32 0, i32 1
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  store i32 1, i32* %2, align 4
  br label %195

164:                                              ; preds = %121, %114
  %165 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %166 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @SCTP_PR_POLICY(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %192, label %171

171:                                              ; preds = %164
  %172 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %173 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load i32, i32* @jiffies, align 4
  %180 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %181 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @time_after(i32 %179, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %189 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %188, i32 0, i32 1
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  store i32 1, i32* %2, align 4
  br label %195

192:                                              ; preds = %178, %171, %164
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %187, %130, %109, %36, %21, %13
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @SCTP_PR_TTL_ENABLED(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local %struct.sctp_stream_out* @SCTP_SO(i32*, i32) #1

declare dso_local i64 @SCTP_PR_INDEX(i32) #1

declare dso_local i64 @SCTP_PR_RTX_ENABLED(i32) #1

declare dso_local i32 @SCTP_PR_POLICY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
