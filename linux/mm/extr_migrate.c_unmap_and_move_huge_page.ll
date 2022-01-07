; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_unmap_and_move_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_unmap_and_move_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.anon_vma = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page* (%struct.page*, i64)*, i32 (%struct.page*, i64)*, i64, %struct.page*, i32, i32, i32)* @unmap_and_move_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_and_move_huge_page(%struct.page* (%struct.page*, i64)* %0, i32 (%struct.page*, i64)* %1, i64 %2, %struct.page* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.page* (%struct.page*, i64)*, align 8
  %10 = alloca i32 (%struct.page*, i64)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.anon_vma*, align 8
  store %struct.page* (%struct.page*, i64)* %0, %struct.page* (%struct.page*, i64)** %9, align 8
  store i32 (%struct.page*, i64)* %1, i32 (%struct.page*, i64)** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.page* %3, %struct.page** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct.anon_vma* null, %struct.anon_vma** %19, align 8
  %22 = load %struct.page*, %struct.page** %12, align 8
  %23 = call i32 @page_hstate(%struct.page* %22)
  %24 = call i32 @hugepage_migration_supported(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %7
  %27 = load %struct.page*, %struct.page** %12, align 8
  %28 = call i32 @putback_active_hugepage(%struct.page* %27)
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %162

31:                                               ; preds = %7
  %32 = load %struct.page* (%struct.page*, i64)*, %struct.page* (%struct.page*, i64)** %9, align 8
  %33 = load %struct.page*, %struct.page** %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call %struct.page* %32(%struct.page* %33, i64 %34)
  store %struct.page* %35, %struct.page** %18, align 8
  %36 = load %struct.page*, %struct.page** %18, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %162

41:                                               ; preds = %31
  %42 = load %struct.page*, %struct.page** %12, align 8
  %43 = call i32 @trylock_page(%struct.page* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %141

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %52 [
    i32 129, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %49, %49
  br label %53

52:                                               ; preds = %49
  br label %141

53:                                               ; preds = %51
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = call i32 @lock_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.page*, %struct.page** %12, align 8
  %58 = call i64 @page_private(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = call i32 @page_mapping(%struct.page* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %16, align 4
  br label %138

67:                                               ; preds = %60, %56
  %68 = load %struct.page*, %struct.page** %12, align 8
  %69 = call i64 @PageAnon(%struct.page* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.page*, %struct.page** %12, align 8
  %73 = call %struct.anon_vma* @page_get_anon_vma(%struct.page* %72)
  store %struct.anon_vma* %73, %struct.anon_vma** %19, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.page*, %struct.page** %18, align 8
  %76 = call i32 @trylock_page(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %122

83:                                               ; preds = %74
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = call i64 @page_mapped(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.page*, %struct.page** %12, align 8
  %89 = load i32, i32* @TTU_MIGRATION, align 4
  %90 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @try_to_unmap(%struct.page* %88, i32 %93)
  store i32 1, i32* %17, align 4
  br label %95

95:                                               ; preds = %87, %83
  %96 = load %struct.page*, %struct.page** %12, align 8
  %97 = call i64 @page_mapped(%struct.page* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load %struct.page*, %struct.page** %18, align 8
  %101 = load %struct.page*, %struct.page** %12, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @move_to_new_page(%struct.page* %100, %struct.page* %101, i32 %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.page*, %struct.page** %12, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load %struct.page*, %struct.page** %18, align 8
  br label %116

114:                                              ; preds = %107
  %115 = load %struct.page*, %struct.page** %12, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi %struct.page* [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @remove_migration_ptes(%struct.page* %108, %struct.page* %117, i32 0)
  br label %119

119:                                              ; preds = %116, %104
  %120 = load %struct.page*, %struct.page** %18, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  br label %122

122:                                              ; preds = %119, %82
  %123 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %124 = icmp ne %struct.anon_vma* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.anon_vma*, %struct.anon_vma** %19, align 8
  %127 = call i32 @put_anon_vma(%struct.anon_vma* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.page*, %struct.page** %12, align 8
  %134 = load %struct.page*, %struct.page** %18, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @move_hugetlb_state(%struct.page* %133, %struct.page* %134, i32 %135)
  store i32 (%struct.page*, i64)* null, i32 (%struct.page*, i64)** %10, align 8
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %64
  %139 = load %struct.page*, %struct.page** %12, align 8
  %140 = call i32 @unlock_page(%struct.page* %139)
  br label %141

141:                                              ; preds = %138, %52, %48
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @EAGAIN, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.page*, %struct.page** %12, align 8
  %148 = call i32 @putback_active_hugepage(%struct.page* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32 (%struct.page*, i64)*, i32 (%struct.page*, i64)** %10, align 8
  %151 = icmp ne i32 (%struct.page*, i64)* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32 (%struct.page*, i64)*, i32 (%struct.page*, i64)** %10, align 8
  %154 = load %struct.page*, %struct.page** %18, align 8
  %155 = load i64, i64* %11, align 8
  %156 = call i32 %153(%struct.page* %154, i64 %155)
  br label %160

157:                                              ; preds = %149
  %158 = load %struct.page*, %struct.page** %18, align 8
  %159 = call i32 @putback_active_hugepage(%struct.page* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %160, %38, %26
  %163 = load i32, i32* %8, align 4
  ret i32 %163
}

declare dso_local i32 @hugepage_migration_supported(i32) #1

declare dso_local i32 @page_hstate(%struct.page*) #1

declare dso_local i32 @putback_active_hugepage(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @page_mapping(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_get_anon_vma(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @try_to_unmap(%struct.page*, i32) #1

declare dso_local i32 @move_to_new_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @move_hugetlb_state(%struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
