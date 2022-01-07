; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rds_incoming*)* }

@.str = private unnamed_addr constant [19 x i8] c"put inc %p ref %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_inc_put(%struct.rds_incoming* %0) #0 {
  %2 = alloca %struct.rds_incoming*, align 8
  store %struct.rds_incoming* %0, %struct.rds_incoming** %2, align 8
  %3 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %4 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %5 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %4, i32 0, i32 2
  %6 = call i32 @refcount_read(i32* %5)
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.rds_incoming* %3, i32 %6)
  %8 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %9 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %8, i32 0, i32 2
  %10 = call i64 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %14 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %21 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.rds_incoming*)*, i32 (%struct.rds_incoming*)** %25, align 8
  %27 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %28 = call i32 %26(%struct.rds_incoming* %27)
  br label %29

29:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_incoming*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
