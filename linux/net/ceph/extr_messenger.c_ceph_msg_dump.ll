; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"msg_dump %p (front_alloc_len %d length %zd)\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"header: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" front: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"middle: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"footer: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_msg_dump(%struct.ceph_msg* %0) #0 {
  %2 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %2, align 8
  %3 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %4 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.ceph_msg* %3, i32 %6, i32 %9)
  %11 = load i32, i32* @KERN_DEBUG, align 4
  %12 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %13 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %13, i32 0, i32 3
  %15 = call i32 @print_hex_dump(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 16, i32 1, i32* %14, i32 4, i32 1)
  %16 = load i32, i32* @KERN_DEBUG, align 4
  %17 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @print_hex_dump(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 16, i32 1, i32* %21, i32 %25, i32 1)
  %27 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %1
  %32 = load i32, i32* @KERN_DEBUG, align 4
  %33 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %34 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %41 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @print_hex_dump(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 16, i32 1, i32* %39, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %31, %1
  %48 = load i32, i32* @KERN_DEBUG, align 4
  %49 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %50 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %51 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %50, i32 0, i32 0
  %52 = call i32 @print_hex_dump(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 16, i32 1, i32* %51, i32 4, i32 1)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.ceph_msg*, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
