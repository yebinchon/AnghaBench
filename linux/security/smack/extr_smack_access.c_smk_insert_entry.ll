; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_insert_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_insert_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.smack_known = type { i32, i32, i32 }

@smack_known_hash = common dso_local global %struct.hlist_head* null, align 8
@SMACK_HASH_SLOTS = common dso_local global i32 0, align 4
@smack_known_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smk_insert_entry(%struct.smack_known* %0) #0 {
  %2 = alloca %struct.smack_known*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hlist_head*, align 8
  store %struct.smack_known* %0, %struct.smack_known** %2, align 8
  %5 = load %struct.smack_known*, %struct.smack_known** %2, align 8
  %6 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.smack_known*, %struct.smack_known** %2, align 8
  %9 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = call i32 @full_name_hash(i32* null, i32 %7, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.hlist_head*, %struct.hlist_head** @smack_known_hash, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SMACK_HASH_SLOTS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %18
  store %struct.hlist_head* %19, %struct.hlist_head** %4, align 8
  %20 = load %struct.smack_known*, %struct.smack_known** %2, align 8
  %21 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %20, i32 0, i32 1
  %22 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  %23 = call i32 @hlist_add_head_rcu(i32* %21, %struct.hlist_head* %22)
  %24 = load %struct.smack_known*, %struct.smack_known** %2, align 8
  %25 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %24, i32 0, i32 0
  %26 = call i32 @list_add_rcu(i32* %25, i32* @smack_known_list)
  ret void
}

declare dso_local i32 @full_name_hash(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
