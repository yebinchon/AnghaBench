; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_Usage.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_Usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1056 x i8] c"This program loads a cgroup skb BPF program to enforce\0Acgroup output (egress) bandwidth limits.\0A\0AUSAGE: hbm [-o] [-d]  [-l] [-n <id>] [--no_cn] [-r <rate>]\0A           [-s] [-t <secs>] [-w] [-h] [prog]\0A  Where:\0A    -o         indicates egress direction (default)\0A    -d         print BPF trace debug buffer\0A    --edt      use fq's Earliest Departure Time\0A    -l         also limit flows using loopback\0A    -n <#>     to create cgroup \22/hbm#\22 and attach prog\0A               Default is /hbm1\0A    --no_cn    disable CN notifications\0A    -r <rate>  Rate in Mbps\0A    -s         Update HBM stats\0A    -t <time>  Exit after specified seconds (default is 0)\0A    -w\09       Work conserving flag. cgroup can increase\0A               bandwidth beyond the rate limit specified\0A               while there is available bandwidth. Current\0A               implementation assumes there is only eth0\0A               but can be extended to support multiple NICs\0A    -h         print this info\0A    prog       BPF program file name. Name defaults to\0A                 hbm_out_kern.o\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([1056 x i8], [1056 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
