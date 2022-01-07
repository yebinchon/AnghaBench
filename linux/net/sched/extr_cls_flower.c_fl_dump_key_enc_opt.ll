; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_enc_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_dump_key_enc_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector_key_enc_opts = type { i32 }

@TCA_FLOWER_KEY_ENC_OPTS = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPTS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts*)* @fl_dump_key_enc_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_dump_key_enc_opt(%struct.sk_buff* %0, %struct.flow_dissector_key_enc_opts* %1, %struct.flow_dissector_key_enc_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flow_dissector_key_enc_opts*, align 8
  %7 = alloca %struct.flow_dissector_key_enc_opts*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.flow_dissector_key_enc_opts* %1, %struct.flow_dissector_key_enc_opts** %6, align 8
  store %struct.flow_dissector_key_enc_opts* %2, %struct.flow_dissector_key_enc_opts** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPTS, align 4
  %11 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %6, align 8
  %12 = call i32 @fl_dump_key_options(%struct.sk_buff* %9, i32 %10, %struct.flow_dissector_key_enc_opts* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPTS_MASK, align 4
  %20 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %7, align 8
  %21 = call i32 @fl_dump_key_options(%struct.sk_buff* %18, i32 %19, %struct.flow_dissector_key_enc_opts* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @fl_dump_key_options(%struct.sk_buff*, i32, %struct.flow_dissector_key_enc_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
