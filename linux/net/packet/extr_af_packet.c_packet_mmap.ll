; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32*, i64 }
%struct.packet_sock = type { i32, i32, %struct.packet_ring_buffer, %struct.packet_ring_buffer }
%struct.packet_ring_buffer = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@packet_mmap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)* @packet_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_mmap(%struct.file* %0, %struct.socket* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.packet_sock*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.packet_ring_buffer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %8, align 8
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call %struct.packet_sock* @pkt_sk(%struct.sock* %22)
  store %struct.packet_sock* %23, %struct.packet_sock** %9, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %162

33:                                               ; preds = %3
  %34 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %35 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  store i64 0, i64* %11, align 8
  %37 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %38 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %37, i32 0, i32 3
  store %struct.packet_ring_buffer* %38, %struct.packet_ring_buffer** %12, align 8
  br label %39

39:                                               ; preds = %62, %33
  %40 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %41 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %42 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %41, i32 0, i32 2
  %43 = icmp ule %struct.packet_ring_buffer* %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %46 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %51 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %54 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %52, %55
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = mul i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %49, %44
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %64 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %63, i32 1
  store %struct.packet_ring_buffer* %64, %struct.packet_ring_buffer** %12, align 8
  br label %39

65:                                               ; preds = %39
  %66 = load i64, i64* %11, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %157

69:                                               ; preds = %65
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %72, %75
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %157

81:                                               ; preds = %69
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %13, align 8
  %85 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %86 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %85, i32 0, i32 3
  store %struct.packet_ring_buffer* %86, %struct.packet_ring_buffer** %12, align 8
  br label %87

87:                                               ; preds = %148, %81
  %88 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %89 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %90 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %89, i32 0, i32 2
  %91 = icmp ule %struct.packet_ring_buffer* %88, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %87
  %93 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %94 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = icmp eq %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %148

98:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %144, %98
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %103 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %147

106:                                              ; preds = %99
  %107 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %108 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %140, %106
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %119 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %115
  %123 = load i8*, i8** %17, align 8
  %124 = call %struct.page* @pgv_to_page(i8* %123)
  store %struct.page* %124, %struct.page** %16, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load %struct.page*, %struct.page** %16, align 8
  %128 = call i32 @vm_insert_page(%struct.vm_area_struct* %125, i64 %126, %struct.page* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %157

133:                                              ; preds = %122
  %134 = load i64, i64* @PAGE_SIZE, align 8
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %13, align 8
  %137 = load i64, i64* @PAGE_SIZE, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = getelementptr i8, i8* %138, i64 %137
  store i8* %139, i8** %17, align 8
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %115

143:                                              ; preds = %115
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %99

147:                                              ; preds = %99
  br label %148

148:                                              ; preds = %147, %97
  %149 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %12, align 8
  %150 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %149, i32 1
  store %struct.packet_ring_buffer* %150, %struct.packet_ring_buffer** %12, align 8
  br label %87

151:                                              ; preds = %87
  %152 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %153 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %152, i32 0, i32 1
  %154 = call i32 @atomic_inc(i32* %153)
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %156 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %155, i32 0, i32 2
  store i32* @packet_mmap_ops, i32** %156, align 8
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %151, %132, %80, %68
  %158 = load %struct.packet_sock*, %struct.packet_sock** %9, align 8
  %159 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %157, %30
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @pgv_to_page(i8*) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
