; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_setup_event_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_setup_event_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i64, i32*, i32*, i32 }

@__const.hci_setup_event_mask.events = private unnamed_addr constant [8 x i32] [i32 255, i32 255, i32 251, i32 255, i32 0, i32 0, i32 0, i32 0], align 16
@BLUETOOTH_VER_1_2 = common dso_local global i64 0, align 8
@HCI_LE_ENCRYPTION = common dso_local global i32 0, align 4
@HCI_QUIRK_FIXUP_INQUIRY_MODE = common dso_local global i32 0, align 4
@HCI_OP_SET_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_request*)* @hci_setup_event_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_setup_event_mask(%struct.hci_request* %0) #0 {
  %2 = alloca %struct.hci_request*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.hci_request* %0, %struct.hci_request** %2, align 8
  %5 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %6 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([8 x i32]* @__const.hci_setup_event_mask.events to i8*), i64 32, i1 false)
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BLUETOOTH_VER_1_2, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %199

15:                                               ; preds = %1
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = call i64 @lmp_bredr_capable(%struct.hci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %21 = load i32, i32* %20, align 16
  %22 = or i32 %21, 1
  store i32 %22, i32* %20, align 16
  br label %81

23:                                               ; preds = %15
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 32)
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 32
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 64
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %32, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %23
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = or i32 %44, 16
  store i32 %45, i32* %43, align 16
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, 4
  store i32 %48, i32* %46, align 8
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %23
  %53 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 8
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HCI_LE_ENCRYPTION, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = or i32 %75, 128
  store i32 %76, i32* %74, align 16
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, 128
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %64
  br label %81

81:                                               ; preds = %80, %19
  %82 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %83 = call i64 @lmp_inq_rssi_capable(%struct.hci_dev* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @HCI_QUIRK_FIXUP_INQUIRY_MODE, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 3
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %81
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %93 = load i32, i32* %92, align 16
  %94 = or i32 %93, 2
  store i32 %94, i32* %92, align 16
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = call i64 @lmp_ext_feat_capable(%struct.hci_dev* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = or i32 %101, 4
  store i32 %102, i32* %100, align 16
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = call i64 @lmp_esco_capable(%struct.hci_dev* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, 8
  store i32 %110, i32* %108, align 4
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 16
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %103
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = call i64 @lmp_sniffsubr_capable(%struct.hci_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, 32
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %124 = call i64 @lmp_pause_enc_capable(%struct.hci_dev* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, 128
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %132 = call i64 @lmp_ext_inq_capable(%struct.hci_dev* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, 64
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %140 = call i64 @lmp_no_flush_capable(%struct.hci_dev* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %148 = call i64 @lmp_lsto_capable(%struct.hci_dev* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, 128
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %156 = call i64 @lmp_ssp_capable(%struct.hci_dev* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %154
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, 2
  store i32 %164, i32* %162, align 8
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, 4
  store i32 %167, i32* %165, align 8
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, 8
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, 16
  store i32 %173, i32* %171, align 8
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, 32
  store i32 %176, i32* %174, align 8
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, 4
  store i32 %179, i32* %177, align 4
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, 8
  store i32 %182, i32* %180, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, 16
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %158, %154
  %187 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %188 = call i64 @lmp_le_capable(%struct.hci_dev* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, 32
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = load %struct.hci_request*, %struct.hci_request** %2, align 8
  %196 = load i32, i32* @HCI_OP_SET_EVENT_MASK, align 4
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %198 = call i32 @hci_req_add(%struct.hci_request* %195, i32 %196, i32 32, i32* %197)
  br label %199

199:                                              ; preds = %194, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @lmp_inq_rssi_capable(%struct.hci_dev*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i64 @lmp_ext_feat_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_sniffsubr_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_pause_enc_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_ext_inq_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_no_flush_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_lsto_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_ssp_capable(%struct.hci_dev*) #2

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #2

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
