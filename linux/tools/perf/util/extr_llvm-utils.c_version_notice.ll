; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_version_notice.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_version_notice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [745 x i8] c"     \09LLVM 3.7 or newer is required. Which can be found from http://llvm.org\0A     \09You may want to try git trunk:\0A     \09\09git clone http://llvm.org/git/llvm.git\0A     \09\09     and\0A     \09\09git clone http://llvm.org/git/clang.git\0A\0A     \09Or fetch the latest clang/llvm 3.7 from pre-built llvm packages for\0A     \09debian/ubuntu:\0A     \09\09http://llvm.org/apt\0A\0A     \09If you are using old version of clang, change 'clang-bpf-cmd-template'\0A     \09option in [llvm] section of ~/.perfconfig to:\0A\0A     \09  \22$CLANG_EXEC $CLANG_OPTIONS $KERNEL_INC_OPTIONS $PERF_BPF_INC_OPTIONS \\\0A     \09     -working-directory $WORKING_DIR -c $CLANG_SOURCE \\\0A     \09     -emit-llvm -o - | /path/to/llc -march=bpf -filetype=obj -o -\22\0A     \09(Replace /path/to/llc with path to your llc)\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @version_notice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @version_notice() #0 {
  %1 = call i32 @pr_err(i8* getelementptr inbounds ([745 x i8], [745 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
