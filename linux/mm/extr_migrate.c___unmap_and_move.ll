; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c___unmap_and_move.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c___unmap_and_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.anon_vma = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@MIGRATE_ASYNC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TTU_MIGRATION = common dso_local global i32 0, align 4
@TTU_IGNORE_MLOCK = common dso_local global i32 0, align 4
@TTU_IGNORE_ACCESS = common dso_local global i32 0, align 4
@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.page*, i32, i32)* @__unmap_and_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__unmap_and_move(%struct.page* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.anon_vma*, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.anon_vma* null, %struct.anon_vma** %11, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @__PageMovable(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @trylock_page(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MIGRATE_ASYNC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  br label %174

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PF_MEMALLOC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %174

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @lock_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %4
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = call i64 @PageWriteback(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %49 [
    i32 129, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %46, %46
  br label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %165

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %165

56:                                               ; preds = %52
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = call i32 @wait_on_page_writeback(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %42
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @PageAnon(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i32 @PageKsm(%struct.page* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.page*, %struct.page** %5, align 8
  %69 = call %struct.anon_vma* @page_get_anon_vma(%struct.page* %68)
  store %struct.anon_vma* %69, %struct.anon_vma** %11, align 8
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @trylock_page(%struct.page* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %165

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.page*, %struct.page** %6, align 8
  %88 = load %struct.page*, %struct.page** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @move_to_new_page(%struct.page* %87, %struct.page* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %162

91:                                               ; preds = %79
  %92 = load %struct.page*, %struct.page** %5, align 8
  %93 = getelementptr inbounds %struct.page, %struct.page* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i32 @PageAnon(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %5, align 8
  %100 = call i32 @VM_BUG_ON_PAGE(i32 %98, %struct.page* %99)
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i64 @page_has_private(%struct.page* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.page*, %struct.page** %5, align 8
  %106 = call i32 @try_to_free_buffers(%struct.page* %105)
  br label %162

107:                                              ; preds = %96
  br label %137

108:                                              ; preds = %91
  %109 = load %struct.page*, %struct.page** %5, align 8
  %110 = call i64 @page_mapped(%struct.page* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %108
  %113 = load %struct.page*, %struct.page** %5, align 8
  %114 = call i32 @PageAnon(%struct.page* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.page*, %struct.page** %5, align 8
  %118 = call i32 @PageKsm(%struct.page* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  %122 = icmp ne %struct.anon_vma* %121, null
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %116, %112
  %125 = phi i1 [ false, %116 ], [ false, %112 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load %struct.page*, %struct.page** %5, align 8
  %128 = call i32 @VM_BUG_ON_PAGE(i32 %126, %struct.page* %127)
  %129 = load %struct.page*, %struct.page** %5, align 8
  %130 = load i32, i32* @TTU_MIGRATION, align 4
  %131 = load i32, i32* @TTU_IGNORE_MLOCK, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @TTU_IGNORE_ACCESS, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @try_to_unmap(%struct.page* %129, i32 %134)
  store i32 1, i32* %10, align 4
  br label %136

136:                                              ; preds = %124, %108
  br label %137

137:                                              ; preds = %136, %107
  %138 = load %struct.page*, %struct.page** %5, align 8
  %139 = call i64 @page_mapped(%struct.page* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load %struct.page*, %struct.page** %6, align 8
  %143 = load %struct.page*, %struct.page** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @move_to_new_page(%struct.page* %142, %struct.page* %143, i32 %144)
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load %struct.page*, %struct.page** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load %struct.page*, %struct.page** %6, align 8
  br label %158

156:                                              ; preds = %149
  %157 = load %struct.page*, %struct.page** %5, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi %struct.page* [ %155, %154 ], [ %157, %156 ]
  %160 = call i32 @remove_migration_ptes(%struct.page* %150, %struct.page* %159, i32 0)
  br label %161

161:                                              ; preds = %158, %146
  br label %162

162:                                              ; preds = %161, %104, %86
  %163 = load %struct.page*, %struct.page** %6, align 8
  %164 = call i32 @unlock_page(%struct.page* %163)
  br label %165

165:                                              ; preds = %162, %78, %55, %49
  %166 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  %167 = icmp ne %struct.anon_vma* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.anon_vma*, %struct.anon_vma** %11, align 8
  %170 = call i32 @put_anon_vma(%struct.anon_vma* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.page*, %struct.page** %5, align 8
  %173 = call i32 @unlock_page(%struct.page* %172)
  br label %174

174:                                              ; preds = %171, %38, %30
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load %struct.page*, %struct.page** %6, align 8
  %187 = call i32 @put_page(%struct.page* %186)
  br label %191

188:                                              ; preds = %178
  %189 = load %struct.page*, %struct.page** %6, align 8
  %190 = call i32 @putback_lru_page(%struct.page* %189)
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %174
  %193 = load i32, i32* %9, align 4
  ret i32 %193
}

declare dso_local i32 @__PageMovable(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_get_anon_vma(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @move_to_new_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @try_to_unmap(%struct.page*, i32) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
