; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_flow_hash_from_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_flow_hash_from_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_keys = type { i32 }

@hashrnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_hash_from_keys(%struct.flow_keys* %0) #0 {
  %2 = alloca %struct.flow_keys*, align 8
  store %struct.flow_keys* %0, %struct.flow_keys** %2, align 8
  %3 = call i32 (...) @__flow_hash_secret_init()
  %4 = load %struct.flow_keys*, %struct.flow_keys** %2, align 8
  %5 = call i32 @__flow_hash_from_keys(%struct.flow_keys* %4, i32* @hashrnd)
  ret i32 %5
}

declare dso_local i32 @__flow_hash_secret_init(...) #1

declare dso_local i32 @__flow_hash_from_keys(%struct.flow_keys*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
