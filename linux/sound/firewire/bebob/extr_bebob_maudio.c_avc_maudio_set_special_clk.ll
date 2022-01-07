; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_avc_maudio_set_special_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_avc_maudio_set_special_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, i32, i32, i32, %struct.special_params* }
%struct.special_params = type { i32, i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32, i32, i32, i32)* @avc_maudio_set_special_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_maudio_set_special_clk(%struct.snd_bebob* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_bebob*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.special_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_bebob*, %struct.snd_bebob** %7, align 8
  %16 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %15, i32 0, i32 4
  %17 = load %struct.special_params*, %struct.special_params** %16, align 8
  store %struct.special_params* %17, %struct.special_params** %12, align 8
  %18 = load %struct.snd_bebob*, %struct.snd_bebob** %7, align 8
  %19 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %18, i32 0, i32 3
  %20 = call i64 @amdtp_stream_running(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.snd_bebob*, %struct.snd_bebob** %7, align 8
  %24 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %23, i32 0, i32 2
  %25 = call i64 @amdtp_stream_running(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %5
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %163

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i32 12, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %163

38:                                               ; preds = %30
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 255, i32* %42, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 4, i32* %46, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 4, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 255, %51
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 255, %55
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  %60 = and i32 255, %59
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 255, %63
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 9
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 10
  store i32 0, i32* %68, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  store i32 0, i32* %70, align 4
  %71 = load %struct.snd_bebob*, %struct.snd_bebob** %7, align 8
  %72 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @BIT(i32 1)
  %77 = call i32 @BIT(i32 2)
  %78 = or i32 %76, %77
  %79 = call i32 @BIT(i32 3)
  %80 = or i32 %78, %79
  %81 = call i32 @BIT(i32 4)
  %82 = or i32 %80, %81
  %83 = call i32 @BIT(i32 5)
  %84 = or i32 %82, %83
  %85 = call i32 @BIT(i32 6)
  %86 = or i32 %84, %85
  %87 = call i32 @BIT(i32 7)
  %88 = or i32 %86, %87
  %89 = call i32 @BIT(i32 8)
  %90 = or i32 %88, %89
  %91 = call i32 @BIT(i32 9)
  %92 = or i32 %90, %91
  %93 = call i32 @fcp_avc_transaction(i32 %73, i32* %74, i32 12, i32* %75, i32 12, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %38
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  br label %120

102:                                              ; preds = %96, %38
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @ENOSYS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  br label %119

110:                                              ; preds = %102
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %159

124:                                              ; preds = %120
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.special_params*, %struct.special_params** %12, align 8
  %129 = getelementptr inbounds %struct.special_params, %struct.special_params* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.special_params*, %struct.special_params** %12, align 8
  %134 = getelementptr inbounds %struct.special_params, %struct.special_params* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.special_params*, %struct.special_params** %12, align 8
  %139 = getelementptr inbounds %struct.special_params, %struct.special_params* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.special_params*, %struct.special_params** %12, align 8
  %144 = getelementptr inbounds %struct.special_params, %struct.special_params* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.special_params*, %struct.special_params** %12, align 8
  %146 = getelementptr inbounds %struct.special_params, %struct.special_params* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %124
  %150 = load %struct.snd_bebob*, %struct.snd_bebob** %7, align 8
  %151 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %154 = load %struct.special_params*, %struct.special_params** %12, align 8
  %155 = getelementptr inbounds %struct.special_params, %struct.special_params* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @snd_ctl_notify(i32 %152, i32 %153, i64 %156)
  br label %158

158:                                              ; preds = %149, %124
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %158, %123
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @kfree(i32* %160)
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %159, %35, %27
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @amdtp_stream_running(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @fcp_avc_transaction(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
