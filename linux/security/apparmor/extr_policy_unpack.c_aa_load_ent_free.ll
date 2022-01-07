; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_load_ent_free.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_aa_load_ent_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_load_ent = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_load_ent_free(%struct.aa_load_ent* %0) #0 {
  %2 = alloca %struct.aa_load_ent*, align 8
  store %struct.aa_load_ent* %0, %struct.aa_load_ent** %2, align 8
  %3 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %4 = icmp ne %struct.aa_load_ent* %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %7 = getelementptr inbounds %struct.aa_load_ent, %struct.aa_load_ent* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @aa_put_profile(i32 %8)
  %10 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %11 = getelementptr inbounds %struct.aa_load_ent, %struct.aa_load_ent* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @aa_put_profile(i32 %12)
  %14 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %15 = getelementptr inbounds %struct.aa_load_ent, %struct.aa_load_ent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @aa_put_profile(i32 %16)
  %18 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %19 = getelementptr inbounds %struct.aa_load_ent, %struct.aa_load_ent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.aa_load_ent*, %struct.aa_load_ent** %2, align 8
  %23 = call i32 @kzfree(%struct.aa_load_ent* %22)
  br label %24

24:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @aa_put_profile(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kzfree(%struct.aa_load_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
