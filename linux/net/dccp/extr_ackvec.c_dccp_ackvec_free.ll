; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ackvec.c_dccp_ackvec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_ackvec = type { i32 }

@dccp_ackvec_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_ackvec_free(%struct.dccp_ackvec* %0) #0 {
  %2 = alloca %struct.dccp_ackvec*, align 8
  store %struct.dccp_ackvec* %0, %struct.dccp_ackvec** %2, align 8
  %3 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %2, align 8
  %4 = icmp ne %struct.dccp_ackvec* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %2, align 8
  %10 = call i32 @dccp_ackvec_purge_records(%struct.dccp_ackvec* %9)
  %11 = load i32, i32* @dccp_ackvec_slab, align 4
  %12 = load %struct.dccp_ackvec*, %struct.dccp_ackvec** %2, align 8
  %13 = call i32 @kmem_cache_free(i32 %11, %struct.dccp_ackvec* %12)
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dccp_ackvec_purge_records(%struct.dccp_ackvec*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dccp_ackvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
