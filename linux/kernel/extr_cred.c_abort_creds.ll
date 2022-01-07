; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_abort_creds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_abort_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"abort_creds(%p{%d,%d})\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abort_creds(%struct.cred* %0) #0 {
  %2 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %2, align 8
  %3 = load %struct.cred*, %struct.cred** %2, align 8
  %4 = load %struct.cred*, %struct.cred** %2, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %4, i32 0, i32 0
  %6 = call i32 @atomic_read(i32* %5)
  %7 = load %struct.cred*, %struct.cred** %2, align 8
  %8 = call i64 @read_cred_subscribers(%struct.cred* %7)
  %9 = call i32 @kdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cred* %3, i32 %6, i64 %8)
  %10 = load %struct.cred*, %struct.cred** %2, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp slt i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.cred*, %struct.cred** %2, align 8
  %17 = call i32 @put_cred(%struct.cred* %16)
  ret void
}

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
