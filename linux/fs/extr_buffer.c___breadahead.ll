; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c___breadahead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c___breadahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.buffer_head = type { i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__breadahead(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.buffer_head* @__getblk(%struct.block_device* %8, i32 %9, i32 %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %13 = call i64 @likely(%struct.buffer_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @REQ_OP_READ, align 4
  %17 = load i32, i32* @REQ_RAHEAD, align 4
  %18 = call i32 @ll_rw_block(i32 %16, i32 %17, i32 1, %struct.buffer_head** %7)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = call i32 @brelse(%struct.buffer_head* %19)
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.buffer_head* @__getblk(%struct.block_device*, i32, i32) #1

declare dso_local i64 @likely(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
