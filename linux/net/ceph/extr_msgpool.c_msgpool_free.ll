; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_msgpool_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_msgpool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msgpool = type { i32 }
%struct.ceph_msg = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"msgpool_release %s %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @msgpool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgpool_free(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ceph_msgpool*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ceph_msgpool*
  store %struct.ceph_msgpool* %8, %struct.ceph_msgpool** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ceph_msg*
  store %struct.ceph_msg* %10, %struct.ceph_msg** %6, align 8
  %11 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %15 = call i32 @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.ceph_msg* %14)
  %16 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %19 = call i32 @ceph_msg_put(%struct.ceph_msg* %18)
  ret void
}

declare dso_local i32 @dout(i8*, i32, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
