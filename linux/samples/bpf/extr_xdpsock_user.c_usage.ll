; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [803 x i8] c"  Usage: %s [OPTIONS]\0A  Options:\0A  -r, --rxdrop\09\09Discard all incoming packets (default)\0A  -t, --txonly\09\09Only send packets\0A  -l, --l2fwd\09\09MAC swap L2 forwarding\0A  -i, --interface=n\09Run on interface n\0A  -q, --queue=n\09Use queue n (default 0)\0A  -p, --poll\09\09Use poll syscall\0A  -S, --xdp-skb=n\09Use XDP skb-mod\0A  -N, --xdp-native=n\09Enfore XDP native mode\0A  -n, --interval=n\09Specify statistics update interval (default 1 sec).\0A  -z, --zero-copy      Force zero-copy mode.\0A  -c, --copy           Force copy mode.\0A  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\0A  -m, --no-need-wakeup Turn off use of driver need wakeup flag.\0A  -f, --frame-size=n   Set the frame size (must be a power of two in aligned mode, default is %d).\0A  -u, --unaligned\09Enable unaligned chunk placement\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@XSK_UMEM__DEFAULT_FRAME_SIZE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([803 x i8], [803 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* @XSK_UMEM__DEFAULT_FRAME_SIZE, align 4
  %8 = call i32 @fprintf(i32 %4, i8* %5, i8* %6, i32 %7)
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = call i32 @exit(i32 %9) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
