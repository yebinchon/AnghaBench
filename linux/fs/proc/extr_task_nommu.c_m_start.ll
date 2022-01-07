; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_m_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_m_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.proc_maps_private* }
%struct.proc_maps_private = type { %struct.mm_struct*, i32, i32 }
%struct.mm_struct = type { i32, i32 }
%struct.rb_node = type opaque

@ESRCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @m_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @m_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.proc_maps_private*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.proc_maps_private*, %struct.proc_maps_private** %11, align 8
  store %struct.proc_maps_private* %12, %struct.proc_maps_private** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.proc_maps_private*, %struct.proc_maps_private** %6, align 8
  %16 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_proc_task(i32 %17)
  %19 = load %struct.proc_maps_private*, %struct.proc_maps_private** %6, align 8
  %20 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.proc_maps_private*, %struct.proc_maps_private** %6, align 8
  %22 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ESRCH, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i8* @ERR_PTR(i32 %27)
  store i8* %28, i8** %3, align 8
  br label %78

29:                                               ; preds = %2
  %30 = load %struct.proc_maps_private*, %struct.proc_maps_private** %6, align 8
  %31 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %30, i32 0, i32 0
  %32 = load %struct.mm_struct*, %struct.mm_struct** %31, align 8
  store %struct.mm_struct* %32, %struct.mm_struct** %7, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %34 = icmp ne %struct.mm_struct* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %37 = call i32 @mmget_not_zero(%struct.mm_struct* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %29
  store i8* null, i8** %3, align 8
  br label %78

40:                                               ; preds = %35
  %41 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = call i64 @down_read_killable(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %47 = call i32 @mmput(%struct.mm_struct* %46)
  %48 = load i32, i32* @EINTR, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i8* @ERR_PTR(i32 %49)
  store i8* %50, i8** %3, align 8
  br label %78

51:                                               ; preds = %40
  %52 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 1
  %54 = call i8* @rb_first(i32* %53)
  %55 = bitcast i8* %54 to %struct.rb_node*
  store %struct.rb_node* %55, %struct.rb_node** %8, align 8
  br label %56

56:                                               ; preds = %67, %51
  %57 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %58 = icmp ne %struct.rb_node* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %65 = bitcast %struct.rb_node* %64 to i8*
  store i8* %65, i8** %3, align 8
  br label %78

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %69 = bitcast %struct.rb_node* %68 to i8*
  %70 = call i8* @rb_next(i8* %69)
  %71 = bitcast i8* %70 to %struct.rb_node*
  store %struct.rb_node* %71, %struct.rb_node** %8, align 8
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %77 = call i32 @mmput(%struct.mm_struct* %76)
  store i8* null, i8** %3, align 8
  br label %78

78:                                               ; preds = %72, %63, %45, %39, %25
  %79 = load i8*, i8** %3, align 8
  ret i8* %79
}

declare dso_local i32 @get_proc_task(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mmget_not_zero(%struct.mm_struct*) #1

declare dso_local i64 @down_read_killable(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i8* @rb_first(i32*) #1

declare dso_local i8* @rb_next(i8*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
