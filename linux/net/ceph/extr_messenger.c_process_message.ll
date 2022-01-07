; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_process_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_6__, %struct.ceph_msg* }
%struct.TYPE_5__ = type { i32 (%struct.ceph_connection*, %struct.ceph_msg*)* }
%struct.TYPE_6__ = type { i64 }
%struct.ceph_msg = type { %struct.TYPE_4__, %struct.ceph_connection* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_6__, i32 }

@.str = private unnamed_addr constant [60 x i8] c"===== %p %llu from %s%lld %d=%s len %d+%d (%u %u %u) =====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_message(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %4, i32 0, i32 7
  %6 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  store %struct.ceph_msg* %6, %struct.ceph_msg** %3, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 7
  %9 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %10 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %9, i32 0, i32 1
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %10, align 8
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %13 = icmp ne %struct.ceph_connection* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %16, i32 0, i32 7
  store %struct.ceph_msg* null, %struct.ceph_msg** %17, align 8
  %18 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 6
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = bitcast %struct.TYPE_6__* %25 to i8*
  %30 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %33 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %37 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %40 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %41 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le64_to_cpu(i32 %43)
  %45 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ENTITY_NAME(i64 %49)
  %51 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %52 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = call i32 @ceph_msg_type_name(i32 %60)
  %62 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %68 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %73 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %76 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %79 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dout(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.ceph_msg* %39, i32 %44, i32 %50, i32 %55, i32 %61, i32 %66, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %83 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ceph_connection*, %struct.ceph_msg*)*, i32 (%struct.ceph_connection*, %struct.ceph_msg*)** %85, align 8
  %87 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %88 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %89 = call i32 %86(%struct.ceph_connection* %87, %struct.ceph_msg* %88)
  %90 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %91 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %90, i32 0, i32 0
  %92 = call i32 @mutex_lock(i32* %91)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_msg*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ENTITY_NAME(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ceph_msg_type_name(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
