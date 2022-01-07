; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_ioctx_add_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_ioctx_add_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kioctx = type { i32, i32, i32*, i32* }
%struct.mm_struct = type { i32, i32 }
%struct.kioctx_table = type { i32, i32, i32*, i32* }
%struct.aio_ring = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kioctx*, %struct.mm_struct*)* @ioctx_add_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctx_add_table(%struct.kioctx* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kioctx*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kioctx_table*, align 8
  %9 = alloca %struct.kioctx_table*, align 8
  %10 = alloca %struct.aio_ring*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kioctx_table* @rcu_dereference_raw(i32 %16)
  store %struct.kioctx_table* %17, %struct.kioctx_table** %8, align 8
  br label %18

18:                                               ; preds = %2, %153
  %19 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %20 = icmp ne %struct.kioctx_table* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %25 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %30 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rcu_access_pointer(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %41 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %43 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %50 = bitcast %struct.kioctx* %49 to %struct.kioctx_table*
  %51 = call i32 @rcu_assign_pointer(i32 %48, %struct.kioctx_table* %50)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %56 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.aio_ring* @kmap_atomic(i32 %59)
  store %struct.aio_ring* %60, %struct.aio_ring** %10, align 8
  %61 = load %struct.kioctx*, %struct.kioctx** %4, align 8
  %62 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aio_ring*, %struct.aio_ring** %10, align 8
  %65 = getelementptr inbounds %struct.aio_ring, %struct.aio_ring* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.aio_ring*, %struct.aio_ring** %10, align 8
  %67 = call i32 @kunmap_atomic(%struct.aio_ring* %66)
  store i32 0, i32* %3, align 4
  br label %154

68:                                               ; preds = %28
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %22

72:                                               ; preds = %22
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %75 = icmp ne %struct.kioctx_table* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %78 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ %79, %76 ], [ 1, %80 ]
  %83 = mul i32 %82, 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %85 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = add i64 24, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.kioctx_table* @kzalloc(i32 %91, i32 %92)
  store %struct.kioctx_table* %93, %struct.kioctx_table** %8, align 8
  %94 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %95 = icmp ne %struct.kioctx_table* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %154

99:                                               ; preds = %81
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %102 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %104 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %103, i32 0, i32 1
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %107 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.kioctx_table* @rcu_dereference_raw(i32 %108)
  store %struct.kioctx_table* %109, %struct.kioctx_table** %9, align 8
  %110 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  %111 = icmp ne %struct.kioctx_table* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %99
  %113 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %114 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %117 = call i32 @rcu_assign_pointer(i32 %115, %struct.kioctx_table* %116)
  br label %153

118:                                              ; preds = %99
  %119 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %120 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  %123 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ugt i32 %121, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %128 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  %131 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  %134 = getelementptr inbounds %struct.kioctx_table, %struct.kioctx_table* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = zext i32 %135 to i64
  %137 = mul i64 %136, 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcpy(i32* %129, i32* %132, i32 %138)
  %140 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %141 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %144 = call i32 @rcu_assign_pointer(i32 %142, %struct.kioctx_table* %143)
  %145 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  %146 = load i32, i32* @rcu, align 4
  %147 = call i32 @kfree_rcu(%struct.kioctx_table* %145, i32 %146)
  br label %152

148:                                              ; preds = %118
  %149 = load %struct.kioctx_table*, %struct.kioctx_table** %8, align 8
  %150 = call i32 @kfree(%struct.kioctx_table* %149)
  %151 = load %struct.kioctx_table*, %struct.kioctx_table** %9, align 8
  store %struct.kioctx_table* %151, %struct.kioctx_table** %8, align 8
  br label %152

152:                                              ; preds = %148, %126
  br label %153

153:                                              ; preds = %152, %112
  br label %18

154:                                              ; preds = %96, %38
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.kioctx_table* @rcu_dereference_raw(i32) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.kioctx_table*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.aio_ring* @kmap_atomic(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.aio_ring*) #1

declare dso_local %struct.kioctx_table* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.kioctx_table*, i32) #1

declare dso_local i32 @kfree(%struct.kioctx_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
