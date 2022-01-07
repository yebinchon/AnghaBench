; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ping_close(sk=%p,sk->num=%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"isk->refcnt = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ping_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %5)
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_3__* @inet_sk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, %struct.TYPE_3__*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %6, i32 %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = call i32 @refcount_read(i32* %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  %17 = call i32 (i8*, %struct.TYPE_3__*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %16)
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = call i32 @sk_common_release(%struct.sock* %18)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.TYPE_3__*, ...) #1

declare dso_local %struct.TYPE_3__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @sk_common_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
