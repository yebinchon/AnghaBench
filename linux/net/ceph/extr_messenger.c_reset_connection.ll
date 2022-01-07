; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_reset_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_reset_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, i64, i64, %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.ceph_connection* }

@.str = private unnamed_addr constant [21 x i8] c"reset_connection %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @reset_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_connection(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %3)
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %5, i32 0, i32 8
  %7 = call i32 @ceph_msg_remove_list(i32* %6)
  %8 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %8, i32 0, i32 7
  %10 = call i32 @ceph_msg_remove_list(i32* %9)
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %16, i32 0, i32 6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ceph_connection*, %struct.ceph_connection** %19, align 8
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %22 = icmp ne %struct.ceph_connection* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %26 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @ceph_msg_put(%struct.TYPE_2__* %27)
  %29 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %29, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  br label %31

31:                                               ; preds = %15, %1
  %32 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %33 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %37 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.ceph_connection*, %struct.ceph_connection** %44, align 8
  %46 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %47 = icmp ne %struct.ceph_connection* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %51 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @ceph_msg_put(%struct.TYPE_2__* %52)
  %54 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %55 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %54, i32 0, i32 3
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %55, align 8
  br label %56

56:                                               ; preds = %40, %31
  %57 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %58 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %60 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %62 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i32 @ceph_msg_remove_list(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_msg_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
