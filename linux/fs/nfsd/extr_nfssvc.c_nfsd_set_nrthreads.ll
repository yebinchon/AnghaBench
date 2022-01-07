; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_set_nrthreads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_set_nrthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32*, i32)* }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfsd_mutex = common dso_local global i32 0, align 4
@NFSD_MAXSERVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_set_nrthreads(i32 %0, i32* %1, %struct.net* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsd_net*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.net* %2, %struct.net** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = load i32, i32* @nfsd_net_id, align 4
  %15 = call %struct.nfsd_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.nfsd_net* %15, %struct.nfsd_net** %11, align 8
  %16 = call i32 @mutex_is_locked(i32* @nfsd_mutex)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %22 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %187

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %32 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %39 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %29
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NFSD_MAXSERVS, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @NFSD_MAXSERVS, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %134

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %108, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i1 [ false, %75 ], [ %81, %79 ]
  br i1 %83, label %84, label %111

84:                                               ; preds = %82
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NFSD_MAXSERVS, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %84
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %75

111:                                              ; preds = %82
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 0
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i1 [ false, %112 ], [ %118, %116 ]
  br i1 %120, label %121, label %133

121:                                              ; preds = %119
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %112

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %70
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %144 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = call i32 @svc_get(%struct.TYPE_5__* %145)
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %180, %142
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %183

151:                                              ; preds = %147
  %152 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %153 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_5__*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32)** %157, align 8
  %159 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %160 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %163 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 %158(%struct.TYPE_5__* %161, i32* %169, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %151
  br label %183

179:                                              ; preds = %151
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %147

183:                                              ; preds = %178, %147
  %184 = load %struct.net*, %struct.net** %7, align 8
  %185 = call i32 @nfsd_destroy(%struct.net* %184)
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %28
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @svc_get(%struct.TYPE_5__*) #1

declare dso_local i32 @nfsd_destroy(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
