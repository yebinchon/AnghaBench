; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_keywest = type { i32 }

@tumbler_init_client.regs = internal global [3 x i32] [i32 128, i32 104, i32 0], align 4
@.str = private unnamed_addr constant [25 x i8] c"(I) tumbler init client\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_keywest*)* @tumbler_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_init_client(%struct.pmac_keywest* %0) #0 {
  %2 = alloca %struct.pmac_keywest*, align 8
  store %struct.pmac_keywest* %0, %struct.pmac_keywest** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.pmac_keywest*, %struct.pmac_keywest** %2, align 8
  %5 = call i32 @send_init_client(%struct.pmac_keywest* %4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @tumbler_init_client.regs, i64 0, i64 0))
  ret i32 %5
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @send_init_client(%struct.pmac_keywest*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
