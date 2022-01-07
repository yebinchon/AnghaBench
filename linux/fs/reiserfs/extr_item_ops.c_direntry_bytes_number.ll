; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_bytes_number.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_item_ops.c_direntry_bytes_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vs-16090\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bytes number is asked for direntry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.item_head*, i32)* @direntry_bytes_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direntry_bytes_number(%struct.item_head* %0, i32 %1) #0 {
  %3 = alloca %struct.item_head*, align 8
  %4 = alloca i32, align 4
  store %struct.item_head* %0, %struct.item_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @reiserfs_warning(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @reiserfs_warning(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
