; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcookies.c_hash_dcookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcookies.c_hash_dcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dcookie_struct = type { i32 }

@dcookie_hashtable = common dso_local global %struct.list_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcookie_struct*)* @hash_dcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_dcookie(%struct.dcookie_struct* %0) #0 {
  %2 = alloca %struct.dcookie_struct*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.dcookie_struct* %0, %struct.dcookie_struct** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** @dcookie_hashtable, align 8
  %5 = load %struct.dcookie_struct*, %struct.dcookie_struct** %2, align 8
  %6 = call i32 @dcookie_value(%struct.dcookie_struct* %5)
  %7 = call i32 @dcookie_hash(i32 %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i64 %8
  store %struct.list_head* %9, %struct.list_head** %3, align 8
  %10 = load %struct.dcookie_struct*, %struct.dcookie_struct** %2, align 8
  %11 = getelementptr inbounds %struct.dcookie_struct, %struct.dcookie_struct* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = call i32 @list_add(i32* %11, %struct.list_head* %12)
  ret void
}

declare dso_local i32 @dcookie_hash(i32) #1

declare dso_local i32 @dcookie_value(%struct.dcookie_struct*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
