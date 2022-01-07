; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_addref.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"addref rm %p ref %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_message_addref(%struct.rds_message* %0) #0 {
  %2 = alloca %struct.rds_message*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %2, align 8
  %3 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %4 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %5 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %4, i32 0, i32 0
  %6 = call i32 @refcount_read(i32* %5)
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rds_message* %3, i32 %6)
  %8 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %9 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %8, i32 0, i32 0
  %10 = call i32 @refcount_inc(i32* %9)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_message*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
