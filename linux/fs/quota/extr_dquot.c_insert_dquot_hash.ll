; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_insert_dquot_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_insert_dquot_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.dquot = type { i32, i32, i32 }

@dquot_hash = common dso_local global %struct.hlist_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*)* @insert_dquot_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_dquot_hash(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.hlist_head*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %4 = load %struct.hlist_head*, %struct.hlist_head** @dquot_hash, align 8
  %5 = load %struct.dquot*, %struct.dquot** %2, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dquot*, %struct.dquot** %2, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @hashfn(i32 %7, i32 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %4, i64 %12
  store %struct.hlist_head* %13, %struct.hlist_head** %3, align 8
  %14 = load %struct.dquot*, %struct.dquot** %2, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 0
  %16 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %17 = call i32 @hlist_add_head(i32* %15, %struct.hlist_head* %16)
  ret void
}

declare dso_local i32 @hashfn(i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
