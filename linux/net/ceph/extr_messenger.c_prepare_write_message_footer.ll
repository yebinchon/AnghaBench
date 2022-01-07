; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_message_footer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_prepare_write_message_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i32, %struct.TYPE_4__*, %struct.ceph_msg* }
%struct.TYPE_4__ = type { i32 (%struct.ceph_msg*)* }
%struct.ceph_msg = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@CEPH_MSG_FOOTER_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"prepare_write_message_footer %p\0A\00", align 1
@CEPH_FEATURE_MSG_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @prepare_write_message_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_write_message_footer(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %4, i32 0, i32 4
  %6 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  store %struct.ceph_msg* %6, %struct.ceph_msg** %3, align 8
  %7 = load i32, i32* @CEPH_MSG_FOOTER_COMPLETE, align 4
  %8 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %7
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %14 = call i32 @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %13)
  %15 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = call i32 @sizeof_footer(%struct.ceph_connection* %16)
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %18, i32 0, i32 1
  %20 = call i32 @con_out_kvec_add(%struct.ceph_connection* %15, i32 %17, %struct.TYPE_6__* %19)
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CEPH_FEATURE_MSG_AUTH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %29 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ceph_msg*)*, i32 (%struct.ceph_msg*)** %31, align 8
  %33 = icmp ne i32 (%struct.ceph_msg*)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %36 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ceph_msg*)*, i32 (%struct.ceph_msg*)** %38, align 8
  %40 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %41 = call i32 %39(%struct.ceph_msg* %40)
  br label %46

42:                                               ; preds = %27
  %43 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %34
  br label %55

47:                                               ; preds = %1
  %48 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %53 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %46
  %56 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %60 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %62 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i32 @con_out_kvec_add(%struct.ceph_connection*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sizeof_footer(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
