; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_advance_rx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_advance_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i64, i32, i32, i32 }
%struct.o2net_msg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"receiving\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@O2NET_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"at page_off %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_sock_container*)* @o2net_advance_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_advance_rx(%struct.o2net_sock_container* %0) #0 {
  %2 = alloca %struct.o2net_sock_container*, align 8
  %3 = alloca %struct.o2net_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.o2net_sock_container* %0, %struct.o2net_sock_container** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %8 = call i32 (%struct.o2net_sock_container*, i8*, ...) @sclog(%struct.o2net_sock_container* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %10 = call i32 @o2net_set_advance_start_time(%struct.o2net_sock_container* %9)
  %11 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %12 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %1
  %19 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %20 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %54

24:                                               ; preds = %18
  %25 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %26 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @page_address(i32 %27)
  %29 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %30 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %28, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %35 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub i64 4, %37
  store i64 %38, i64* %6, align 8
  %39 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %40 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @o2net_recv_tcp_msg(i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %24
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %50 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %24
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %56 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %62 = call i32 @o2net_check_handshake(%struct.o2net_sock_container* %61)
  %63 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %64 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %54
  br label %229

75:                                               ; preds = %1
  %76 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %77 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %79, 4
  br i1 %80, label %81, label %137

81:                                               ; preds = %75
  %82 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %83 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @page_address(i32 %84)
  %86 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %87 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %85, i64 %89
  store i8* %90, i8** %5, align 8
  %91 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %92 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 4, %94
  store i64 %95, i64* %6, align 8
  %96 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %97 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @o2net_recv_tcp_msg(i32 %98, i8* %99, i64 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %81
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %107 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %111 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %131

115:                                              ; preds = %104
  %116 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %117 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @page_address(i32 %118)
  %120 = bitcast i8* %119 to %struct.o2net_msg*
  store %struct.o2net_msg* %120, %struct.o2net_msg** %3, align 8
  %121 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %122 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be16_to_cpu(i32 %123)
  %125 = load i32, i32* @O2NET_MAX_PAYLOAD_BYTES, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load i32, i32* @EOVERFLOW, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %115
  br label %131

131:                                              ; preds = %130, %104
  br label %132

132:                                              ; preds = %131, %81
  %133 = load i32, i32* %4, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %229

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136, %75
  %138 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %139 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %229

144:                                              ; preds = %137
  %145 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %146 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @page_address(i32 %147)
  %149 = bitcast i8* %148 to %struct.o2net_msg*
  store %struct.o2net_msg* %149, %struct.o2net_msg** %3, align 8
  %150 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %151 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %152 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @msglog(%struct.o2net_msg* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %156 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = sub i64 %158, 4
  %160 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %161 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @be16_to_cpu(i32 %162)
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %159, %164
  br i1 %165, label %166, label %206

166:                                              ; preds = %144
  %167 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %168 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @page_address(i32 %169)
  %171 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %172 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr i8, i8* %170, i64 %174
  store i8* %175, i8** %5, align 8
  %176 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %177 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @be16_to_cpu(i32 %178)
  %180 = sext i32 %179 to i64
  %181 = add i64 4, %180
  %182 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %183 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = sub i64 %181, %185
  store i64 %186, i64* %6, align 8
  %187 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %188 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @o2net_recv_tcp_msg(i32 %189, i8* %190, i64 %191)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %166
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %198 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %166
  %202 = load i32, i32* %4, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %229

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %205, %144
  %207 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %208 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = sub i64 %210, 4
  %212 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %213 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @be16_to_cpu(i32 %214)
  %216 = sext i32 %215 to i64
  %217 = icmp eq i64 %211, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %206
  %219 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %220 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %221 = call i32 @o2net_process_message(%struct.o2net_sock_container* %219, %struct.o2net_msg* %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i32 1, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %218
  %226 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %227 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %226, i32 0, i32 1
  store i32 0, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %206
  br label %229

229:                                              ; preds = %228, %204, %143, %135, %74
  %230 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %231 = load i32, i32* %4, align 4
  %232 = call i32 (%struct.o2net_sock_container*, i8*, ...) @sclog(%struct.o2net_sock_container* %230, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %231)
  %233 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %234 = call i32 @o2net_set_advance_stop_time(%struct.o2net_sock_container* %233)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*, ...) #1

declare dso_local i32 @o2net_set_advance_start_time(%struct.o2net_sock_container*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @o2net_recv_tcp_msg(i32, i8*, i64) #1

declare dso_local i32 @o2net_check_handshake(%struct.o2net_sock_container*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @msglog(%struct.o2net_msg*, i8*, i32) #1

declare dso_local i32 @o2net_process_message(%struct.o2net_sock_container*, %struct.o2net_msg*) #1

declare dso_local i32 @o2net_set_advance_stop_time(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
