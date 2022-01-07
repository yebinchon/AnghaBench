; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_getsetattr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_getsetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mq_attr = type { i32 }
%struct.audit_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mq_attr, i32 }

@AUDIT_MQ_GETSETATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_getsetattr(i32 %0, %struct.mq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mq_attr*, align 8
  %5 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.mq_attr* %1, %struct.mq_attr** %4, align 8
  %6 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %6, %struct.audit_context** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %9 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %12 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mq_attr*, %struct.mq_attr** %4, align 8
  %15 = bitcast %struct.mq_attr* %13 to i8*
  %16 = bitcast %struct.mq_attr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load i32, i32* @AUDIT_MQ_GETSETATTR, align 4
  %18 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %19 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
