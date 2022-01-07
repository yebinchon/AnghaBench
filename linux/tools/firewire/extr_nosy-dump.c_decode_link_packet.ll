; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_decode_link_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_decode_link_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_info = type { i32, %struct.packet_field* }
%struct.packet_field = type { i32, i64, i8**, i32, i8* }
%struct.link_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@packet_info = common dso_local global %struct.packet_info* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s=[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s=0x%0*llx\00", align 1
@PACKET_FIELD_DATA_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_packet*, i64, i32, i32)* @decode_link_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_link_packet(%struct.link_packet* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.link_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.packet_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.packet_field*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.link_packet* %0, %struct.link_packet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.packet_info*, %struct.packet_info** @packet_info, align 8
  %19 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %20 = getelementptr inbounds %struct.link_packet, %struct.link_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %18, i64 %22
  store %struct.packet_info* %23, %struct.packet_info** %9, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %189, %4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.packet_info*, %struct.packet_info** %9, align 8
  %27 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %192

30:                                               ; preds = %24
  %31 = load %struct.packet_info*, %struct.packet_info** %9, align 8
  %32 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %31, i32 0, i32 1
  %33 = load %struct.packet_field*, %struct.packet_field** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %33, i64 %35
  store %struct.packet_field* %36, %struct.packet_field** %12, align 8
  %37 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %38 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %189

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %49 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %189

55:                                               ; preds = %47, %44
  %56 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %57 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = mul i64 %61, 8
  %63 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %64 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = sub i64 %66, 32
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  br label %74

69:                                               ; preds = %55
  %70 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %71 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %69, %60
  %75 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %76 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %83 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @get_bits(%struct.link_packet* %80, i32 %81, i32 %84)
  store i64 %85, i64* %14, align 8
  %86 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %87 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %179

93:                                               ; preds = %74
  %94 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %95 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %100 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %104 = bitcast %struct.link_packet* %103 to i8*
  %105 = load i32, i32* %13, align 4
  %106 = sdiv i32 %105, 8
  %107 = add nsw i32 %106, 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dump_data(i8* %109, i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %178

113:                                              ; preds = %93
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, -32
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %118 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %121, -32
  %123 = icmp ne i32 %115, %122
  br i1 %123, label %124, label %150

124:                                              ; preds = %113
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 31
  %127 = and i32 %126, -32
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %16, align 4
  %130 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %131 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %17, align 4
  %135 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i64 @get_bits(%struct.link_packet* %135, i32 %136, i32 %137)
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* %17, align 4
  %141 = zext i32 %140 to i64
  %142 = shl i64 %139, %141
  %143 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %17, align 4
  %148 = call i64 @get_bits(%struct.link_packet* %143, i32 %146, i32 %147)
  %149 = or i64 %142, %148
  store i64 %149, i64* %15, align 8
  br label %157

150:                                              ; preds = %113
  %151 = load %struct.link_packet*, %struct.link_packet** %5, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %154 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @get_bits(%struct.link_packet* %151, i32 %152, i32 %155)
  store i64 %156, i64* %15, align 8
  br label %157

157:                                              ; preds = %150, %124
  %158 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %159 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %162 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 3
  %165 = sdiv i32 %164, 4
  %166 = load i64, i64* %15, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %160, i32 %165, i64 %166)
  %168 = load %struct.packet_field*, %struct.packet_field** %12, align 8
  %169 = getelementptr inbounds %struct.packet_field, %struct.packet_field* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PACKET_FIELD_DATA_LENGTH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %157
  %175 = load i64, i64* %15, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %174, %157
  br label %178

178:                                              ; preds = %177, %98
  br label %179

179:                                              ; preds = %178, %79
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.packet_info*, %struct.packet_info** %9, align 8
  %182 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %179
  br label %189

189:                                              ; preds = %188, %54, %43
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %24

192:                                              ; preds = %24
  ret void
}

declare dso_local i64 @get_bits(%struct.link_packet*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
