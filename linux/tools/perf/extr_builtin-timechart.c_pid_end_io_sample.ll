; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_end_io_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_end_io_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i64, i64, i32 }
%struct.per_pid = type { i64, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i64, i64, %struct.io_sample* }
%struct.io_sample = type { i64, i32, i64, i64, i64, i64, %struct.io_sample*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid pidcomm!\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Skip invalid end event: previous event already ended!\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Skip invalid end event: invalid event type!\0A\00", align 1
@IOTYPE_READ = common dso_local global i32 0, align 4
@IOTYPE_WRITE = common dso_local global i32 0, align 4
@IOTYPE_TX = common dso_local global i32 0, align 4
@IOTYPE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i32, i32, i64, i64)* @pid_end_io_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_end_io_sample(%struct.timechart* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.timechart*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.per_pid*, align 8
  %13 = alloca %struct.per_pidcomm*, align 8
  %14 = alloca %struct.io_sample*, align 8
  %15 = alloca %struct.io_sample*, align 8
  store %struct.timechart* %0, %struct.timechart** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.timechart*, %struct.timechart** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.per_pid* @find_create_pid(%struct.timechart* %16, i32 %17)
  store %struct.per_pid* %18, %struct.per_pid** %12, align 8
  %19 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %20 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %19, i32 0, i32 1
  %21 = load %struct.per_pidcomm*, %struct.per_pidcomm** %20, align 8
  store %struct.per_pidcomm* %21, %struct.per_pidcomm** %13, align 8
  %22 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %23 = icmp ne %struct.per_pidcomm* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = call i32 @pr_warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %244

26:                                               ; preds = %5
  %27 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %28 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %27, i32 0, i32 2
  %29 = load %struct.io_sample*, %struct.io_sample** %28, align 8
  store %struct.io_sample* %29, %struct.io_sample** %14, align 8
  %30 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %31 = icmp ne %struct.io_sample* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %244

33:                                               ; preds = %26
  %34 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %35 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %244

40:                                               ; preds = %33
  %41 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %42 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %244

48:                                               ; preds = %40
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %51 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %53 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %52, i32 0, i32 6
  %54 = load %struct.io_sample*, %struct.io_sample** %53, align 8
  store %struct.io_sample* %54, %struct.io_sample** %15, align 8
  %55 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %56 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %59 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.timechart*, %struct.timechart** %7, align 8
  %63 = getelementptr inbounds %struct.timechart, %struct.timechart* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %48
  %67 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %68 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.timechart*, %struct.timechart** %7, align 8
  %71 = getelementptr inbounds %struct.timechart, %struct.timechart* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %75 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %48
  %77 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %78 = icmp ne %struct.io_sample* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %81 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %84 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %89 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %94 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %97 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %104

98:                                               ; preds = %87
  %99 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %100 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %103 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %92
  br label %105

105:                                              ; preds = %104, %79, %76
  %106 = load i64, i64* %11, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %111 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  br label %153

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @IOTYPE_READ, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @IOTYPE_WRITE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @IOTYPE_TX, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IOTYPE_RX, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %124, %120, %116, %112
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %131 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, i64* %11, align 8
  %136 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %137 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %141 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.per_pid*, %struct.per_pid** %12, align 8
  %146 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %151 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %138, %124
  br label %153

153:                                              ; preds = %152, %108
  %154 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %155 = icmp ne %struct.io_sample* %154, null
  br i1 %155, label %156, label %239

156:                                              ; preds = %153
  %157 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %158 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %161 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %239

164:                                              ; preds = %156
  %165 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %166 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %169 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %172, label %239

172:                                              ; preds = %164
  %173 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %174 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %177 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %239

180:                                              ; preds = %172
  %181 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %182 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.timechart*, %struct.timechart** %7, align 8
  %185 = getelementptr inbounds %struct.timechart, %struct.timechart* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %189 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp sge i64 %187, %190
  br i1 %191, label %192, label %239

192:                                              ; preds = %180
  %193 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %194 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %197 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %201 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  %204 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %205 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, %203
  store i64 %207, i64* %205, align 8
  %208 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %209 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %212 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %211, i32 0, i32 2
  store i64 %210, i64* %212, align 8
  %213 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %214 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %213, i32 0, i32 6
  %215 = load %struct.io_sample*, %struct.io_sample** %214, align 8
  %216 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %217 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %216, i32 0, i32 6
  store %struct.io_sample* %215, %struct.io_sample** %217, align 8
  %218 = load %struct.io_sample*, %struct.io_sample** %15, align 8
  %219 = call i32 @free(%struct.io_sample* %218)
  %220 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %221 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %192
  %225 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %226 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %229 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %224
  %233 = load %struct.io_sample*, %struct.io_sample** %14, align 8
  %234 = getelementptr inbounds %struct.io_sample, %struct.io_sample* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.per_pidcomm*, %struct.per_pidcomm** %13, align 8
  %237 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %232, %224, %192
  br label %239

239:                                              ; preds = %238, %180, %172, %164, %156, %153
  %240 = load %struct.timechart*, %struct.timechart** %7, align 8
  %241 = getelementptr inbounds %struct.timechart, %struct.timechart* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 8
  store i32 0, i32* %6, align 4
  br label %244

244:                                              ; preds = %239, %46, %38, %32, %24
  %245 = load i32, i32* %6, align 4
  ret i32 %245
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @free(%struct.io_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
