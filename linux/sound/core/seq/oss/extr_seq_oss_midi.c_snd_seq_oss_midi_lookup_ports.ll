; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_lookup_ports.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_midi.c_snd_seq_oss_midi_lookup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_port_info = type { i32, %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_oss_midi_lookup_ports(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client_info*, align 8
  %5 = alloca %struct.snd_seq_port_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.snd_seq_port_info* @kzalloc(i32 12, i32 %6)
  %8 = bitcast %struct.snd_seq_port_info* %7 to %struct.snd_seq_client_info*
  store %struct.snd_seq_client_info* %8, %struct.snd_seq_client_info** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_seq_port_info* @kzalloc(i32 12, i32 %9)
  store %struct.snd_seq_port_info* %10, %struct.snd_seq_port_info** %5, align 8
  %11 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %12 = icmp ne %struct.snd_seq_client_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %15 = icmp ne %struct.snd_seq_port_info* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %18 = bitcast %struct.snd_seq_client_info* %17 to %struct.snd_seq_port_info*
  %19 = call i32 @kfree(%struct.snd_seq_port_info* %18)
  %20 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %21 = call i32 @kfree(%struct.snd_seq_port_info* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %13
  %25 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %60, %40, %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT, align 4
  %30 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %31 = bitcast %struct.snd_seq_client_info* %30 to %struct.snd_seq_port_info*
  %32 = call i64 @snd_seq_kernel_client_ctl(i32 %28, i32 %29, %struct.snd_seq_port_info* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %36 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %27

41:                                               ; preds = %34
  %42 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %49 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %57, %41
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT, align 4
  %54 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %55 = call i64 @snd_seq_kernel_client_ctl(i32 %52, i32 %53, %struct.snd_seq_port_info* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %59 = call i32 @snd_seq_oss_midi_check_new_port(%struct.snd_seq_port_info* %58)
  br label %51

60:                                               ; preds = %51
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %4, align 8
  %63 = bitcast %struct.snd_seq_client_info* %62 to %struct.snd_seq_port_info*
  %64 = call i32 @kfree(%struct.snd_seq_port_info* %63)
  %65 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %5, align 8
  %66 = call i32 @kfree(%struct.snd_seq_port_info* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.snd_seq_port_info* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_seq_port_info*) #1

declare dso_local i64 @snd_seq_kernel_client_ctl(i32, i32, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_oss_midi_check_new_port(%struct.snd_seq_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
