; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_load_ent_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_load_ent_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_load_ent = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_load_ent* @aa_load_ent_alloc() #0 {
  %1 = alloca %struct.aa_load_ent*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.aa_load_ent* @kzalloc(i32 4, i32 %2)
  store %struct.aa_load_ent* %3, %struct.aa_load_ent** %1, align 8
  %4 = load %struct.aa_load_ent*, %struct.aa_load_ent** %1, align 8
  %5 = icmp ne %struct.aa_load_ent* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load %struct.aa_load_ent*, %struct.aa_load_ent** %1, align 8
  %8 = getelementptr inbounds %struct.aa_load_ent, %struct.aa_load_ent* %7, i32 0, i32 0
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = load %struct.aa_load_ent*, %struct.aa_load_ent** %1, align 8
  ret %struct.aa_load_ent* %11
}

declare dso_local %struct.aa_load_ent* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
