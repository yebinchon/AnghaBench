; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i32 }
%struct.hci_dev = type { i64, i32, i32, i32, i32 }
%struct.hci_conn_params = type { i32, i32, i32, i32 }
%struct.smp_irk = type { i32 }
%struct.hci_request = type { i32 }

@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCI_CONN_SCANNING = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@ADDR_LE_DEV_RANDOM = common dso_local global i8* null, align 8
@LE_LINK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_ADV_ENABLE = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@LE_SCAN_ACTIVE = common dso_local global i64 0, align 8
@HCI_LE_SCAN_INTERRUPTED = common dso_local global i32 0, align 4
@create_le_conn_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @hci_connect_le(%struct.hci_dev* %0, i32* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hci_conn_params*, align 8
  %17 = alloca %struct.hci_conn*, align 8
  %18 = alloca %struct.smp_irk*, align 8
  %19 = alloca %struct.hci_request, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %23 = load i32, i32* @HCI_LE_ENABLED, align 4
  %24 = call i64 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %7
  %27 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %28 = call i64 @lmp_le_capable(%struct.hci_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @ECONNREFUSED, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.hci_conn* @ERR_PTR(i32 %32)
  store %struct.hci_conn* %33, %struct.hci_conn** %8, align 8
  br label %230

34:                                               ; preds = %26
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.hci_conn* @ERR_PTR(i32 %36)
  store %struct.hci_conn* %37, %struct.hci_conn** %8, align 8
  br label %230

38:                                               ; preds = %7
  %39 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %40 = call i64 @hci_lookup_le_connect(%struct.hci_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.hci_conn* @ERR_PTR(i32 %44)
  store %struct.hci_conn* %45, %struct.hci_conn** %8, align 8
  br label %230

46:                                               ; preds = %38
  %47 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %47, i32* %48, i8* %49)
  store %struct.hci_conn* %50, %struct.hci_conn** %17, align 8
  %51 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %52 = icmp ne %struct.hci_conn* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* @HCI_CONN_SCANNING, align 4
  %55 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 10
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.hci_conn* @ERR_PTR(i32 %61)
  store %struct.hci_conn* %62, %struct.hci_conn** %8, align 8
  br label %230

63:                                               ; preds = %53, %46
  %64 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call %struct.smp_irk* @hci_find_irk_by_addr(%struct.hci_dev* %64, i32* %65, i8* %66)
  store %struct.smp_irk* %67, %struct.smp_irk** %18, align 8
  %68 = load %struct.smp_irk*, %struct.smp_irk** %18, align 8
  %69 = icmp ne %struct.smp_irk* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load %struct.smp_irk*, %struct.smp_irk** %18, align 8
  %72 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %71, i32 0, i32 0
  %73 = load i32, i32* @BDADDR_ANY, align 4
  %74 = call i64 @bacmp(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.smp_irk*, %struct.smp_irk** %18, align 8
  %78 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %77, i32 0, i32 0
  store i32* %78, i32** %10, align 8
  %79 = load i8*, i8** @ADDR_LE_DEV_RANDOM, align 8
  store i8* %79, i8** %11, align 8
  br label %80

80:                                               ; preds = %76, %70, %63
  %81 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %82 = icmp ne %struct.hci_conn* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %85 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %84, i32 0, i32 6
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @bacpy(i32* %85, i32* %86)
  br label %106

88:                                               ; preds = %80
  %89 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %90 = load i32, i32* @LE_LINK, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %89, i32 %90, i32* %91, i8* %92)
  store %struct.hci_conn* %93, %struct.hci_conn** %17, align 8
  %94 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %95 = icmp ne %struct.hci_conn* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.hci_conn* @ERR_PTR(i32 %98)
  store %struct.hci_conn* %99, %struct.hci_conn** %8, align 8
  br label %230

100:                                              ; preds = %88
  %101 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %102 = call i32 @hci_conn_hold(%struct.hci_conn* %101)
  %103 = load i8*, i8** %12, align 8
  %104 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %105 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %100, %83
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %109 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @BT_SECURITY_LOW, align 4
  %111 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %112 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %115 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %117 = call i32 @hci_req_init(%struct.hci_request* %19, %struct.hci_dev* %116)
  %118 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %119 = load i32, i32* @HCI_LE_ADV, align 4
  %120 = call i64 @hci_dev_test_flag(%struct.hci_dev* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  store i8* null, i8** %21, align 8
  %123 = load i32, i32* @HCI_OP_LE_SET_ADV_ENABLE, align 4
  %124 = call i32 @hci_req_add(%struct.hci_request* %19, i32 %123, i32 8, i8** %21)
  br label %125

125:                                              ; preds = %122, %106
  %126 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %127 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %133 = load i32, i32* @HCI_LE_SCAN, align 4
  %134 = call i64 @hci_dev_test_flag(%struct.hci_dev* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %138 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @LE_SCAN_ACTIVE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = call i32 @hci_req_purge(%struct.hci_request* %19)
  %144 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %145 = call i32 @hci_conn_del(%struct.hci_conn* %144)
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  %148 = call %struct.hci_conn* @ERR_PTR(i32 %147)
  store %struct.hci_conn* %148, %struct.hci_conn** %8, align 8
  br label %230

149:                                              ; preds = %136, %131
  %150 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %151 = call i32 @hci_req_directed_advertising(%struct.hci_request* %19, %struct.hci_conn* %150)
  br label %218

152:                                              ; preds = %125
  %153 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %154 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %155 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %154, i32 0, i32 6
  %156 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %157 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %156, i32 0, i32 5
  %158 = load i8*, i8** %157, align 8
  %159 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %153, i32* %155, i8* %158)
  store %struct.hci_conn_params* %159, %struct.hci_conn_params** %16, align 8
  %160 = load %struct.hci_conn_params*, %struct.hci_conn_params** %16, align 8
  %161 = icmp ne %struct.hci_conn_params* %160, null
  br i1 %161, label %162, label %183

162:                                              ; preds = %152
  %163 = load %struct.hci_conn_params*, %struct.hci_conn_params** %16, align 8
  %164 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %167 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load %struct.hci_conn_params*, %struct.hci_conn_params** %16, align 8
  %169 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %172 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.hci_conn_params*, %struct.hci_conn_params** %16, align 8
  %174 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %177 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load %struct.hci_conn_params*, %struct.hci_conn_params** %16, align 8
  %179 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %182 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  br label %204

183:                                              ; preds = %152
  %184 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %185 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %188 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %190 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %193 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  %194 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %195 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %198 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %200 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %203 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %183, %162
  %205 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %206 = load i32, i32* @HCI_LE_SCAN, align 4
  %207 = call i64 @hci_dev_test_flag(%struct.hci_dev* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = call i32 @hci_req_add_le_scan_disable(%struct.hci_request* %19)
  %211 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %212 = load i32, i32* @HCI_LE_SCAN_INTERRUPTED, align 4
  %213 = call i32 @hci_dev_set_flag(%struct.hci_dev* %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %204
  %215 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = call i32 @hci_req_add_le_create_conn(%struct.hci_request* %19, %struct.hci_conn* %215, i32* %216)
  br label %218

218:                                              ; preds = %214, %149
  %219 = load i32, i32* @create_le_conn_complete, align 4
  %220 = call i32 @hci_req_run(%struct.hci_request* %19, i32 %219)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  %225 = call i32 @hci_conn_del(%struct.hci_conn* %224)
  %226 = load i32, i32* %20, align 4
  %227 = call %struct.hci_conn* @ERR_PTR(i32 %226)
  store %struct.hci_conn* %227, %struct.hci_conn** %8, align 8
  br label %230

228:                                              ; preds = %218
  %229 = load %struct.hci_conn*, %struct.hci_conn** %17, align 8
  store %struct.hci_conn* %229, %struct.hci_conn** %8, align 8
  br label %230

230:                                              ; preds = %228, %223, %142, %96, %59, %42, %34, %30
  %231 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  ret %struct.hci_conn* %231
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @ERR_PTR(i32) #1

declare dso_local i64 @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.smp_irk* @hci_find_irk_by_addr(%struct.hci_dev*, i32*, i8*) #1

declare dso_local i64 @bacmp(i32*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i8*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i8**) #1

declare dso_local i32 @hci_req_purge(%struct.hci_request*) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_req_directed_advertising(%struct.hci_request*, %struct.hci_conn*) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i8*) #1

declare dso_local i32 @hci_req_add_le_scan_disable(%struct.hci_request*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_add_le_create_conn(%struct.hci_request*, %struct.hci_conn*, i32*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
