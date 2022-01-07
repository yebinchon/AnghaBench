; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_cc_read_local_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32**, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_features = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@LMP_3SLOT = common dso_local global i32 0, align 4
@HCI_DM3 = common dso_local global i32 0, align 4
@HCI_DH3 = common dso_local global i32 0, align 4
@LMP_5SLOT = common dso_local global i32 0, align 4
@HCI_DM5 = common dso_local global i32 0, align 4
@HCI_DH5 = common dso_local global i32 0, align 4
@LMP_HV2 = common dso_local global i32 0, align 4
@HCI_HV2 = common dso_local global i32 0, align 4
@ESCO_HV2 = common dso_local global i32 0, align 4
@LMP_HV3 = common dso_local global i32 0, align 4
@HCI_HV3 = common dso_local global i32 0, align 4
@ESCO_HV3 = common dso_local global i32 0, align 4
@ESCO_EV3 = common dso_local global i32 0, align 4
@LMP_EV4 = common dso_local global i32 0, align 4
@ESCO_EV4 = common dso_local global i32 0, align 4
@LMP_EV5 = common dso_local global i32 0, align 4
@ESCO_EV5 = common dso_local global i32 0, align 4
@LMP_EDR_ESCO_2M = common dso_local global i32 0, align 4
@ESCO_2EV3 = common dso_local global i32 0, align 4
@LMP_EDR_ESCO_3M = common dso_local global i32 0, align 4
@ESCO_3EV3 = common dso_local global i32 0, align 4
@LMP_EDR_3S_ESCO = common dso_local global i32 0, align 4
@ESCO_2EV5 = common dso_local global i32 0, align 4
@ESCO_3EV5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_local_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_local_features(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_local_features*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_local_features*
  store %struct.hci_rp_read_local_features* %10, %struct.hci_rp_read_local_features** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %209

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %28 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memcpy(i32** %26, i32 %29, i32 8)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LMP_3SLOT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load i32, i32* @HCI_DM3, align 4
  %43 = load i32, i32* @HCI_DH3, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %41, %23
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LMP_5SLOT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load i32, i32* @HCI_DM5, align 4
  %62 = load i32, i32* @HCI_DH5, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %60, %49
  %69 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LMP_HV2, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %68
  %80 = load i32, i32* @HCI_HV2, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @ESCO_HV2, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %79, %68
  %91 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LMP_HV3, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %90
  %102 = load i32, i32* @HCI_HV3, align 4
  %103 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @ESCO_HV3, align 4
  %108 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %101, %90
  %113 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %114 = call i64 @lmp_esco_capable(%struct.hci_dev* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @ESCO_EV3, align 4
  %118 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %124 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @LMP_EV4, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @ESCO_EV4, align 4
  %135 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %122
  %140 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @LMP_EV5, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load i32, i32* @ESCO_EV5, align 4
  %152 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %153 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %139
  %157 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %158 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @LMP_EDR_ESCO_2M, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = load i32, i32* @ESCO_2EV3, align 4
  %169 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %170 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %156
  %174 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %175 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %174, i32 0, i32 0
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @LMP_EDR_ESCO_3M, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %173
  %185 = load i32, i32* @ESCO_3EV3, align 4
  %186 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %187 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %173
  %191 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %192 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 5
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @LMP_EDR_3S_ESCO, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %190
  %202 = load i32, i32* @ESCO_2EV5, align 4
  %203 = load i32, i32* @ESCO_3EV5, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %206 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %22, %201, %190
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
